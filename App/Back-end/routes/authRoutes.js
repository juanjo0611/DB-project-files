const express = require("express");
const router = express.Router();
const authController = require("../controllers/authController.js");

router.get("/", authController.test);

module.exports = router;