const express = require('express');
const router = express.Router();


router.get('/home', (req, res, next) =>{
    res.status(200).send("i am working sha");
});



// export the router to be able to use in other files
module.exports = router;