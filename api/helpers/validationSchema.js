const Joi = require("@hapi/joi");

const userSchema = Joi.object().keys({
  email: Joi.string().email({ minDomainSegments: 2 }).label("email").required(),
  username: Joi.string().trim().alphanum().min(3)
    .max(16)
    .label("username")
    .required(),
  password: Joi.string().label("password").regex(/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*;])(?=.{8,})/, "required password strength").required(),
  confirmPassword: Joi.ref("password")
});

const userLoginSchema = Joi.object().keys({
  email: Joi.string().email({ minDomainSegments: 2 }).label("email").required(),
});

module.exports = { userSchema, userLoginSchema };
