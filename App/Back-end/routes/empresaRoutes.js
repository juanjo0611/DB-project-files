import express from 'express';
const router = express.Router();

import { middleware } from '../middleware/middleware.js';
import { getFullInfoEmpresa, getFullInfoEmpresaById } from '../controllers/empresaReadsController.js';
import { putInfoEmpresa } from '../controllers/empresaUpdatesController.js';
import { postNewEmpresa } from '../controllers/empresaInsertsController.js';

router.get('/get-info', middleware, getFullInfoEmpresa);
router.get('/get-info/:id', middleware, getFullInfoEmpresaById);

// POST ROUTES
router.post('/post-new-empresa', middleware, postNewEmpresa);

// PUT ROUTES
router.put(
  '/put-edit-info',
  middleware,
  putInfoEmpresa
);

export default router;