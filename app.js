 // importing express framework
 const express = require("express");
 const path = require('path');
 const cookieParser = require('cookie-parser');
 const logger = require('morgan');
 const bodyParser = require('body-parser');
 const dotenv = require('dotenv');


 const app = express();


 app.use(express.json());

 app.use(logger('dev'));
 app.use(cookieParser());
 

 // Respond with "hello world" for requests that hit our root "/"
 app.get("/", (req, res) =>  res.send("<h2>Welcome to NigeriaApi</h2><p><a href=\"/api/v1\">Check out version 1 of the Nigeria API</a></p>"));


 module.exports = app;
