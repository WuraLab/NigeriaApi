/* eslint-disable no-unused-vars */
// importing express framework
const express = require("express");
const path = require("path");
const cookieParser = require("cookie-parser");
const logger = require("morgan");
const bodyParser = require("body-parser");
const dotenv = require("dotenv");
const cors = require("cors");

dotenv.config();


//  import the routes here
const indexRouter = require("./routes/index.js");

const app = express();
// this is to prevent CORS errors
app.use((req, res, next) => {
res.header('Access-Control-Allow-Origin', '*')
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
    if (req.method === 'OPTIONS') {
        res.header('Access-Control-Allow-Methods', 'PUT, POST, PATCH, DELETE, GET')
        return res.status(200).json({})
    }
    next();
})

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

app.use("/api/v1/", indexRouter);

// Respond with welcome... for requests that hit our root "/"
app.get("/", (req, res) => res.send("<h2>Welcome to NigeriaApi</h2><p><a href=\"/api/v1\">Check out version 1 of the Nigeria API</a></p>"));

module.exports = app;
