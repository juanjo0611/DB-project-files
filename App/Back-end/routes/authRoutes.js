import express from 'express';
const router = express.Router();
// const { authController } = require("../controllers/authController.js");
import { test } from "../controllers/authController.js"

router.get("/", test);

export default router;