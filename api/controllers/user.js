const db = require("../models/index");
const mailer = require("../helpers/mailer");
const { generateMailForSignup } = require("./email/helper");
const { generateApikey, confirmApikey } = require("../helpers/generateApikey")

const { users } = db;
const {
  hashPassword, tokengen, decodeToken, decoder, isPasswordValid
} = require("../helpers/authHelper");

exports.signup = async (req, res) => {
  // get values from body
  // the password should be atleast, contain atleast one number,
  //  it only accept this symbols !@#$%^&*;
  const {
    username, email, password, confirmPassword, role
  } = req.body;
  try {
    // checks if password and confirmPasword match
    if (password !== confirmPassword) {
      return res.status(403).json({ response: "confirm password doesn't match with password" });
    }
    // check if user exist in Db

    const existingUser = await users.findOne(({ where: { email } }));

    if (existingUser) {
      return res.status(400).json({ response: "User with this email already exist" });
    }
    // hash password
    const hash = await hashPassword(confirmPassword);
    const token = await tokengen({ email });
    // create userdetails to Database
    // const role = "USER"
    const createdUser = await users.create({
      email, username, password: hash, role
    });
    const validationLink = `${process.env.BASE_URL}/validate/users/?token=${token}`;
    // generateMailForSignup is  a function that returns an html file
    const options = {
      receiver: email,
      subject: "Nigeria API E-mail validation",
      text: "Validate your account",
      output: generateMailForSignup(validationLink, createdUser.username)
    };
    // function to send the mail
    await mailer(options);
    return res.status(201).json({ response: "SignUp successful, check your email for validation", createdUser, token });
  } catch (error) {
    return res.status(500).json({ response: error.message });
  }
};

exports.validate = async (req, res) => {
  const { token } = req.query;

  try {
    // decode the token
    const decodedToken = await decodeToken(token);
    const decode = decodedToken !== null && await decoder(token);
    const associatedmail = decode !== null ? decode.email : "";

    // checks if user exists with that token

    if (!decodedToken.email) {
      return res.status(404).json({ response: "There is user with this token, please make sure you are clicking the correct link" });
    }
    // find the user with that token
    const existingUser = await users.findOne(({ where: { email: associatedmail } }));

    // if user users exist update the users data to activate true
    if (existingUser) {
      const getemail = existingUser.email;
      await users.update({ activated: true }, { where: { email: getemail } });
    }

    // generate the user apikey
    const userApikey = generateApikey(existingUser.email);
    if (userApikey) {
      const getemail = existingUser.email;
      await users.update({ apikey: userApikey }, { where: { email: getemail } });
    }


    if (!userApikey) { return res.status(400).json({ response: 'there was an issue genrating your APIKEY' }) }
    // generateMailForSignup is  a function that returns an html file
    const options = {
      receiver: existingUser.email,
      subject: "NigeriaApi VERIFIED ACCOUNT",
      text: "your account is verified",
      output: generateMailForSignup(userApikey, existingUser.email)
    };

    // function to send the mail
    await mailer(options);


    // return a succesfully page saying account has been activated
    return res.status(200).send(`hello ${associatedmail} you account is now fully activated, and your apikey is ${userApikey} explore the NigeriaAPi`);
  } catch (error) {
    return res.status(500).json({ response: error.message });
  }
};

exports.login = async (req, res) => {
  // get the login credentials
  try {
    const { email, password } = req.body;

    // check if email and password exist
    const checkMail = await users.findOne({ where: { email } });
    if (!checkMail) return res.status(401).json({ response: "Email not found" });

    // check password correctness
    const confirmPassword = isPasswordValid(checkMail.password, password);
    if (!confirmPassword) return res.status(401).json({ response: "Un-authorized, password incorrect" });

    //generate token
    const token = await tokengen({ email });
    res.status(200).json({ response: "Auth succesful", token });
  } catch (error) {
    return res.status(500).json({ response: "Auth failed", error });
  }

}

exports.generateApikey = async (req, res) => {
  try {
    // get the email from the logged in user from the token
    const { email } = req.user;
    // check if logged in user details is in the DB
    const user = await users.findOne({ where: { email } });
    if (!user) {
      return res.status(404).json({ response: "User not found" });
    }
    // get the user stored apikey from the user details
    const getapikey = user.apikey;

    return res.status(200).json({ response: "Apikey generated succesfully", apikey: getapikey });
  } catch (error) {
    return res.status(500).json({ response: "Unable to genearate key", error });
  }

}