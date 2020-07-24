const db = require("../models/index");

const { university_data } = db;

exports.allUniversity = (req, res) => {
  const allUni = university_data.findAll();
  res.status(200).json({ response: "endpoint working now", allUni });
};
