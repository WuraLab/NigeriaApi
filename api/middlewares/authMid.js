const jwt = require("jsonwebtoken");
const db = require("../models/index");

const { Users } = db;
const { JWTSECRET } = process.env;

const validateUserToken = async (req, res, next) => {
  const { token } = req.query;
  if (!token || token === undefined) {
    return res.status(403).json({ response: "please provide token" });
  }
  try {
    const decoded = jwt.decode(token);
    const response = await Users.findOne(({ where: { email: decoded.email } }));

    if (!response) {
      return res.status(403).end();
    }
    if (response.activated === false) {
      return res.status(403).json({ response: "your account is activated yet, please activate your account" });
    }
    req.user = response;
    next();
  } catch (error) {
    return res.status(500).json({ response: error });
  }
};

module.exports = validateUserToken;
