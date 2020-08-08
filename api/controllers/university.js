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
    // let Type = type ?  type  : "";
    // console.log(Type)
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

