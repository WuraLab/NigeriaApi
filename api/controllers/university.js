/* eslint-disable camelcase */
const db = require("../models/index");
const { Op } = require("sequelize")
const { university_data } = db;
const query = require("../helpers/query");

exports.allUniversity = async (req, res) => {
  const { limit } = req.query;
  if (!req.user || req.user === undefined) {
    return res.status(401).json({ response: "you dont have access to this endpoint" });
  }

  const dbQuery = query(req.query);

  try {
    let response;
    // check for all the query parameter here and run each one by one
    if (req.query) {
      response = await university_data.findAll({
        limit,
        attributes: {
          exclude: ["createdAt", "updatedAt"]
        },
        where: dbQuery
      });
    } else {
      response = await university_data.findAll({ limit, attributes: { exclude: ["createdAt", "updatedAt"] } });
    }
    return res.status(200).json({ length: response.length, response: response });
  } catch (error) {
    return res.status(500).json({ response: `internal server error ${error}` })

  }

};


exports.oneUniversity = async (req, res) => {
  const name = req.params.name;
  const capitalize = name.toUpperCase();
  console.log(capitalize);
  try {

    if (!req.user || req.user === undefined) {
      return res.status(401).json({ response: "you dont have access to this endpoint" });
    }

    const response = await university_data.findOne({
      attributes: { exclude: ["createdAt", "updatedAt"] },
      where: {
        Abbrevation: capitalize
      }
    })
    if (response == null || response.length < 1) {
      return res.status(404).json({ response: "data not found, probably we dont have the requested university data" })
    }
    return res.status(200).json({ response });
  } catch (error) {
    return res.status(500).json({ response: `${error} occured` });
  }


}

exports.updataUniversity = async (req, res) => {
  const id = req.params.id;

  try {
    const update = await university_data.update(
      { Abbrevation: req.body.Abbrevation,
        Number_of_Students: req.body.no_of_student,
        Number_of_Faculties: req.body.no_of_faculty
      },
      { where: { id: id },
      returning: true
     },
    )
      console.log(update)
    return res.status(200).json({ 
      response: "data updated successfully", 
     update 
  })
  } catch (error) {
    return res.status(500).json({ response: `${error} occured` });
  }
}