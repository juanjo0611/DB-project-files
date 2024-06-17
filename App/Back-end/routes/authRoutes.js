import express from 'express';
const router = express.Router();
// const { authController } = require("../controllers/authController.js");
import { loginEgresado, loginEmpresa, loginAdministrativo } from "../controllers/authLoginController.js"
import { whoAmI } from '../controllers/authWhoController.js';

router.get("/who-am-i", whoAmI)

router.post("/login-egresado", loginEgresado)
router.post("/login-empresa", loginEmpresa)
router.post("/login-administrativo", loginAdministrativo)


export default router;