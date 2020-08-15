/* eslint-disable camelcase */
const db = require("../models/index");
const { Op } = require("sequelize")
const { university_data } = db;
const query = require("../helpers/query");

exports.allUniversity = async (req, res) => {
  const { Type, dateRange, limit } = req.query;
  if (!req.user || req.user === undefined) {
    return res.status(403).json({ response: "you dont have access to this endpoint" });
  }
  const dbQuery = query(req.query);
  console.log("dbQuery", dbQuery)

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
    response = await university_data.findAll({limit, attributes: { exclude: ["createdAt", "updatedAt"] } });
  }
  return res.status(200).json({ length: response.length, response: response });
};
