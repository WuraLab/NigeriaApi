/* eslint-disable consistent-return */
const jwt = require("jsonwebtoken");
const db = require("../models/index");
const { generateApikey, confirmApikey } = require("../helpers/generateApikey")


const { users } = db;

const validateUserToken = async (req, res, next) => {
  const { token } = req.query;
  if (!token || token === undefined) {
    return res.status(403).json({ response: "please provide token" });
  }
  try {
    // const decoded = jwt.decode(token);
    const decoded = confirmApikey(token);
    const response = await users.findOne(({ attributes: ["email", "activated"] , where: { email: decoded } }));
   
    if (!response) {
      return res.status(401).json({response: "Unable to fetch users details"});
    }
    if (response.activated === false) {
      return res.status(401).json({ response: "your account is not activated yet, please activate your account" });
    }
    req.user = response;
    next();
  } catch (error) {
    return res.status(500).json({ response: error.message });
  }
};

module.exports = validateUserToken;
