const express = require("express");

const router = express.Router();
const validator = require("../middlewares/validationMid");
const { signup, validate, login, generateApikey } = require("../controllers/user");
const { allUniversity, oneUniversity } = require("../controllers/university");
const { validateUserToken, checkAuth } = require("../middlewares/authMid");
const { userLoginSchema, userSchema } = require("../helpers/validationSchema");
const { allPolytechnic } = require("../controllers/polytechnic");

// USERS RELATED ENDPOINTS
router.post("/users/", validator(userSchema), signup);
router.get("/validate/users", validate);
router.post("/users/login", validator(userLoginSchema), login);
router.get("/users/generateApikey", checkAuth, generateApikey);

// UNIVERSIRY RELATED ENDPOINT
router.get("/university", validateUserToken, allUniversity);
router.get("/university/:name", validateUserToken, oneUniversity);

// POLYTECHNIC RELATED ENDPOINT
router.get("/polytechnic", validateUserToken, allPolytechnic);
// router.get("/polytechnic/:name", onePolytechnic);


// export the router to be able to use in other files
module.exports = router;
