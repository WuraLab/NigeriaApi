/* eslint-disable camelcase */
const db = require("../models/index");

const { university_data } = db;

exports.allUniversity = async (req, res) => {
  if (!req.user || req.user === undefined) {
    return res.status(403).json({ response: "you dont have access to this endpoint" });
  }

  let response;
  // check for all the query parameter here and run each one by one
  if (req.query.type) {
    console.log("hello")
    response = await university_data.findAll({ attributes: { exclude: ["createdAt", "updatedAt"] }, where: { Type: req.query.type } })
  } else{
    response = await university_data.findAll({ attributes: { exclude: ["createdAt", "updatedAt"] } });
  }
  return res.status(200).json({ response: response });
};

