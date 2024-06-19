import express from 'express';
const router = express.Router();

import { middleware } from '../middleware/middleware.js';
import { getFullInfoEmpresa, getFullInfoEmpresaById } from '../controllers/empresaReadsController.js';
import { putInfoEmpresa } from '../controllers/empresaUpdatesController.js';

router.get('/get-info', middleware, getFullInfoEmpresa);
router.get('/get-info/:id', middleware, getFullInfoEmpresaById);

// PUT ROUTES
router.put(
  '/put-edit-info',
  middleware,
  putInfoEmpresa
);

export default router;