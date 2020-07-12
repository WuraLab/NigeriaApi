/* eslint-disable no-console */
const nodemailer = require("nodemailer");
const smtpTransport = require("nodemailer-smtp-transport");

const {
  MAIL_HOST, MAIL_FROM_ADDRESS, MAIL_USERNAME, MAIL_PASSWORD
} = process.env;
const mailer = async (options) => {
  console.log("i got");
  const fastaMailer = await nodemailer.createTransport(smtpTransport({
    service: "gmail",
    host: MAIL_HOST,
    auth: {

      user: MAIL_USERNAME, // gmail created just for testing purposes
      pass: MAIL_PASSWORD // for testing purposes
    }
  }));

  const mailOptions = {
    from: MAIL_FROM_ADDRESS,
    to: options.receiver,
    subject: options.subject,
    text: options.text,
    html: options.output
  };

  // NOTE!!!
  //  this is for any developer in the future, info is the second parameter of the callback
  //  after error, i had to remove it since i wasnt using it currently to fix some codacy issue
  await fastaMailer.sendMail(mailOptions, (error) => {
    // console.log(mailOptions);
    if (error) {
      throw error;
      // console.log(error);
    }
    console.log("mail sent");
    return "Mail sent";
  });
};

module.exports = mailer;
