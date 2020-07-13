const db = require("../models/index");
const mailer = require("../helpers/mailer");
const { generateMailForSignup } = require("./email/helper");

const Users = db.users;
const { hashPassword, isPasswordValid, generateToken } = require("../helpers/authHelper");

exports.signup = async (req, res) => {
  try {
    // get values from body
    // the password should be atleast, contain atleast one number,
    //  it only accept this symbols !@#$%^&*;
    const {
      username, email, password, confirmPassword
    } = req.body;
    // checks if password and confirmPasword match
    if (password !== confirmPassword) {
      return res.status(403).json({ response: "confirm password not matched with password" });
    }
    // check if user exist in Db
    const existingUser = await Users.findOne(({ where: { email } }));
    if (existingUser) {
      return res.status(400).json({ response: "User with this email already exist" });
    }
    // hash password
    const hash = await hashPassword(confirmPassword);
    const token = await generateToken({ email });
    // console.log(token);
    // create userdetails to Database
    const createdUser = await Users.create({
      email, username, password: hash
    });

    const validationLink = `http://localhost:3000/api/v1/validate/${token}`;

    // generateMailForSignup is  a function that returns an html file
    const options = {
      receiver: email,
      subject: "NigeriaApi E-mail validation",
      text: "validate your account",
      output: generateMailForSignup(validationLink, email)
    };

    // function to send the mail
    await mailer(options);
    return res.status(201).json({ response: "SignUp successful, check your email for validation", createdUser });
  } catch (error) {
    return res.status(500).json({ response: error.message });
  }
};
