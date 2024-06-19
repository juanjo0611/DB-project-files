import express from 'express';
const router = express.Router();

import { middleware } from '../middleware/middleware.js';
import { getPulicCatedras } from '../controllers/viewsController.js';
import { getEgresadosCoordinadores, getPublicInfoCatedra } from '../controllers/CatedraReadsController.js';
import { deleteCatedra } from '../controllers/catedraDeletes.js';
import { postNewCatedra } from '../controllers/catedraInsertsController.js';

router.get('/get-public-catedras', middleware, getPulicCatedras);
router.get('/get-public-info-catedra/:id', middleware, getPublicInfoCatedra);
router.get('/get-egresados-coordinadores/:id', middleware, getEgresadosCoordinadores);

router.post('/post-new-catedra', middleware, postNewCatedra)

router.delete('/delete-catedra/:id', middleware, deleteCatedra)

export default router;