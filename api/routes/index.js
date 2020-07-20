const express = require("express");

const router = express.Router();
const validator = require("../middlewares/validationMid");
const userSchema = require("../helpers/validationSchema");
const { signup, validate } = require("../controllers/user");

// router.get("/home", (req, res) => {
//   res.status(200).send("Home route working");
// });

router.post("/users/", validator(userSchema), signup);
router.get("/validate/users", validate);

// export the router to be able to use in other files
module.exports = router;
