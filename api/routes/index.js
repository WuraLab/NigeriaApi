const express = require("express");

const router = express.Router();
const validator = require("../middlewares/validationMid");
const { signup, validate, login, generateApikey } = require("../controllers/user");
const { allUniversity, oneUniversity, updateUniversity, postUniversity, deleteUniversity, getAllUniversity, getOneUni } = require("../controllers/university");
const { validateUserToken, checkAuth, checkAuthAdmin } = require("../middlewares/authMid");
const { userLoginSchema, userSchema } = require("../helpers/validationSchema");
const { allPolytechnic, onePolytechnic } = require("../controllers/polytechnic");

// USERS RELATED ENDPOINTS
router.post("/users/", validator(userSchema), signup);
router.get("/validate/users", validate);
router.post("/users/login", validator(userLoginSchema), login);
router.get("/users/generateApikey", checkAuth, generateApikey);

// UNIVERSIRY RELATED ENDPOINT
/**
 * @param {String} token - Users API TOKEN, without this, access wont be granted
 * This for this line of code to work, two modules are required
 * [Module validate user token]{@link module:../middlewares/authMid.validateUserToken}
 * [all university controller]{@link module:../middlewares/authMid.validateUserToken}
 * @requires module:../middlewares/authMid.validateUserToken
 * @requires module:../controllers/university.allUniversity
 */
router.get("/university", validateUserToken, allUniversity);
router.get("/university/:name", validateUserToken, oneUniversity);

// POLYTECHNIC RELATED ENDPOINT
router.get("/polytechnic", validateUserToken, allPolytechnic);
router.get("/polytechnic/:name", validateUserToken, onePolytechnic);

// ADMINISTARTIVE ROUTES
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
