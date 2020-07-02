const express = require("express");
const { User } = require("../models");

const router = express.Router();

router.get("/home", (req, res) => {
  res.status(200).send("Home route working");
});

router.post("/users", async (req, res) => {
  const {
    firstName, lastName, email, password
  } = req.body;

  User.create({
    firstName, lastName, email, password
  }).then((result) => res.status(200).json({
    response: {
      message: "signUp succesful",
      data: result
    }
  })).catch((e) => res.status(500).json({
    response: {
      message: "This isnt't you, it is us and we are sorry",
      e
    }
  }));
});

// export the router to be able to use in other files
module.exports = router;
