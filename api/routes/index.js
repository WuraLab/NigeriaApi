const express = require("express");
// const sequelize = require("sequelize");

// const Users = require("../models").users;
const db = require("../models/index");
// eslint-disable-next-line prefer-destructuring
const Users = db.users;

const router = express.Router();

router.get("/home", (req, res) => {
  res.status(200).send("Home route working");
});

router.post("/users", async (req, res) => {
  const { username, email, password } = req.body;

  Users.create({
    username, email, password
  }).then((result) => res.status(200).json({
    response: {
      message: "signUp succesful",
      data: result
    }
  })).catch((e) => res.status(500).json({
    response: {
      message: "This isnt't you, it is us and we are sorry",
      error: e.message
    }
  }));
});

// export the router to be able to use in other files
module.exports = router;
