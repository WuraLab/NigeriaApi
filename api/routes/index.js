const express = require("express");

const router = express.Router();
const validator = require("../middlewares/validationMid");
const userSchema = require("../helpers/validationSchema");
const { signup, validate } = require("../controllers/user");
const { allUniversity } = require("../controllers/university");
const validateUserToken = require("../middlewares/authMid");

// USERS RELATED ENDPOINTS
router.post("/users/", validator(userSchema), signup);
router.get("/validate/users", validate);

// UNIVERSIRY RELATED ENDPOINT
router.get("/university", validateUserToken, allUniversity);
// router.get("/university/:name", validateUserToken, oneUniversity)


// export the router to be able to use in other files
module.exports = router;
