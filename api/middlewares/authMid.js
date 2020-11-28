/* eslint-disable consistent-return */
const jwt = require("jsonwebtoken");
const db = require("../models/index");
const { generateApikey, confirmApikey } = require("../helpers/generateApikey");
const { decodeToken } = require("../helpers/authHelper"); 


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

const checkAuth = async (req, res, next) => {
  const stringToken = req.headers.authorization;
  if (!stringToken || !stringToken.startsWith("Bearer")) {
    return res.status(403).json({ response: "A token is required in the header" });
  }
  const tokenArray = stringToken.split(" ");
  if (!tokenArray || tokenArray.length !== 2) return res.status(403).json({ response: "" });
  const token = tokenArray[1];
  try {
    const data = decodeToken(token);
    const user = await users.findOne({ attributes: ["email"], where: { email: data.email } });
    if (!user) {
      return res.status(401).json({
        response: "Authentication failed"
      });
    }
    req.user = user;
    next();
  } catch (error) {
    return res.status(500).json({ response: error });
  }
}

const checkAuthAdmin = async (req, res, next) => {
  const stringToken = req.headers.authorization;
  if (!stringToken || !stringToken.startsWith("Bearer")) {
    return res.status(403).json({ response: "A token is required in the header" });
  }
  const tokenArray = stringToken.split(" ");
  if (!tokenArray || tokenArray.length !== 2) return res.status(403).json({ response: "" });
  const token = tokenArray[1];
  try {
    const data = decodeToken(token);
    const user = await users.findOne({ attributes: ["email", "role"], where: { email: data.email } });
    if (!user ) {
      return res.status(401).json({
        response: "Authentication failed"
      });
    }
    if (user.role != "ADMIN") {
      return res.status(401).json({
        response: "Un-Authorization user"
      });
    }
    req.user = user;
    next();
  } catch (error) {
    return res.status(500).json({ response: error });
  }
}
module.exports = { validateUserToken, checkAuth, checkAuthAdmin };
