const express = require("express");

const router = express.Router();

router.get("/home", (req, res) => {
  res.status(200).send("Home route working");
});

// export the router to be able to use in other files
module.exports = router;
