const express = require("express");

const router = express.Router();
const validator = require("../middlewares/validationMid");
const { signup, validate, login, generateApikey } = require("../controllers/user");
const { allUniversity, oneUniversity, updateUniversity, postUniversity, deleteUniversity, getAllUniversity, getOneUni } = require("../controllers/university");
const { validateUserToken, checkAuth, checkAuthAdmin } = require("../middlewares/authMid");
const { userLoginSchema, userSchema } = require("../helpers/validationSchema");
const { allPolytechnic, onePolytechnic } = require("../controllers/polytechnic");

// USERS RELATED ENDPOINTS
/**
 * This is the users authentication routes
 * the route allow users to signup, login and generate API Key
 */
router.post("/users/", validator(userSchema), signup);
router.get("/validate/users", validate);
router.post("/users/login", validator(userLoginSchema), login);
router.get("/users/generateApikey", checkAuth, generateApikey);


// UNIVERSIRY RELATED ENDPOINT
/**
 * this is the universities data route
 * users can get all universities and a single university data by name.
 * the route uses a middleware to validate the users
 * and enable the user to generate API keys
 *
 */
router.get("/university", validateUserToken, allUniversity);
router.get("/university/:name", validateUserToken, oneUniversity);

// POLYTECHNIC RELATED ENDPOINT

/**
 * this is the polytechnic data route
 * users can get all polytechnic and a single polytechnic data by name
 * the route uses a middleware to validate the users
 * and enable the user to generate API keys
 *
 */
router.get("/polytechnic", validateUserToken, allPolytechnic);
router.get("/polytechnic/:name", validateUserToken, onePolytechnic);

// ADMINISTARTIVE ROUTES
/**
 * This routes is for the admin
 * it enables the admin to perform
 * crud operations and update the api data.
 */
router.route("/universities/:id")
    .all(checkAuthAdmin)
    .delete(deleteUniversity)
    .patch(updateUniversity)
    .get(getOneUni)

router.route("/universities")
    .all(checkAuthAdmin)
    .post(postUniversity)
    .get(getAllUniversity)
// export the router to be able to use in other files
module.exports = router;
