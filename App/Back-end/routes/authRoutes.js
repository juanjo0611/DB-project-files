import express from 'express';
const router = express.Router();
// const { authController } = require("../controllers/authController.js");
import { loginEgresado, loginEmpresa, loginAdministrativo } from "../controllers/authLoginController.js"
import { whoAmI } from '../controllers/authWhoController.js';
import { middleware } from '../middleware/middleware.js';

router.get('/who-am-i', middleware, whoAmI);

router.post('/login-egresado', middleware, loginEgresado);
router.post('/login-empresa', middleware, loginEmpresa);
router.post('/login-administrativo', middleware, loginAdministrativo);


export default router;