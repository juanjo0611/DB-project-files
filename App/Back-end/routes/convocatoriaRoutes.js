import express from 'express';
const router = express.Router();

import { middleware } from '../middleware/middleware.js';
import { getPulicConvocatorias } from '../controllers/viewsController.js';

router.get('/get-public-convocatorias', middleware, getPulicConvocatorias);

export default router;