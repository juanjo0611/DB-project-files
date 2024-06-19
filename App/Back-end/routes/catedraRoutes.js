import express from 'express';
const router = express.Router();

import { middleware } from '../middleware/middleware.js';
import { getPulicCatedras } from '../controllers/viewsController.js';

router.get('/get-public-catedras', middleware, getPulicCatedras);

export default router;