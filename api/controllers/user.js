const db = require("../models/index");

const Users = db.users;
const { hashPassword, isPasswordValid, generateToken } = require("../helpers/authHelper");

exports.signup = async (req, res) => {
  try {
    // get values from body
    const {
      username, email, password, confirmPassword
    } = req.body;
    // checks if password and confirmPasword matche
    if (password !== confirmPassword) {
      return res.status(403).json({ response: "confirm password not matched with password" });
    }

    // hash password
    const hash = await hashPassword(confirmPassword);
    const token = await generateToken({ email });
    console.log(token);
    // create userdetails to Database
    const created = await Users.create({
      email, username, password: hash
    });
    return res.status(201).json({ response: "SignUp successful, check your email for validation", created });
  } catch (error) {
    return res.status(500).json({ response: error.message });
  }
};
