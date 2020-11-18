const fs = require("fs");
const nunjunks = require("nunjucks");
const path = require("path");

/**
 * this function generate a confirmation email after a user sign up
 * it uses nunjunks for HTML templating.
 * @param {string} link the link the user will click to confirm registration
 * @param {string} username the registered user username
 */
const generateMailForSignup = (link, username) => {
  nunjunks.configure({ autoescape: true });
  return nunjunks.renderString(
    fs.readFileSync(path.join(__dirname, "/templates/email.html")).toString("utf-8"),
    {
      link, username
    }
  );
};
/**
 * this function generate a confirmation email after a user when they need to generate an API key
 * @param {sting} userApiKey userrApi key
 * @param {string} email user email
 */
const generateMailForApiKey = (userApiKey, email) => {
  nunjunks.configure({ autoescape: true });
  return nunjunks.renderString(
    fs.readFileSync(path.join(__dirname, "/templates/validate.html")).toString("utf-8"),
    {
      userApiKey, email
    }
  );
};

module.exports = { generateMailForSignup, generateMailForApiKey };
