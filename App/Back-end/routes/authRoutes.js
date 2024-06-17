import express from 'express';
const router = express.Router();
// const { authController } = require("../controllers/authController.js");
import { loginEgresado, test } from "../controllers/authLoginController.js"

router.get("/", test);
router.post("/login", loginEgresado)

export default router;