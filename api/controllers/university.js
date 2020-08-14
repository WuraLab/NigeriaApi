/* eslint-disable camelcase */
const db = require("../models/index");
const { Op } = require("sequelize")
const { university_data } = db;

exports.allUniversity = async (req, res) => {
  const { type, dateRange, limit } = req.query;
  if (!req.user || req.user === undefined) {
    return res.status(403).json({ response: "you dont have access to this endpoint" });
  }
  let response;
  // check for all the query parameter here and run each one by one
  if (req.query) {
    let Type = type ?  type  : "";
    let founded = dateRange.length > 1 ?  {[Op.gte]: dateRange } : " ";
    response = await university_data.findAll({
      attributes: {
        exclude: ["createdAt", "updatedAt"]
      },
      where: {
         Type : req.query.type,
         Founded: {[Op.gte]: dateRange }
      }
    });
  } else {
    response = await university_data.findAll({ attributes: { exclude: ["createdAt", "updatedAt"] } });
  }
  return res.status(200).json({ length: response.length, response: response });
};

exports.oneUniversity = async (req, res) => {
  const name  = req.params.name;
  const capitalize = name.toUpperCase();
  console.log(capitalize);
  if (!req.user || req.user === undefined) {
    return res.status(403).json({ response: "you dont have access to this endpoint" });
  }

  const response = await university_data.findOne({ attributes: { exclude: ["createdAt", "updatedAt"] }, 
  where: {
    Abbrevation: capitalize
  }})
  if(response == null || response.length < 1) {
    return res.status(404).json({ response: "data not found, probably we dont have the requested university data" })
  } 
  return res.status(200).json({ response });

}