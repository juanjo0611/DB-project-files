import express from 'express';
const router = express.Router();

import { middleware } from '../middleware/middleware.js';
import { documentosPorFacultad, egresadosTrabajarPaises, programaEducativoInformacion } from '../controllers/viewsController.js';

router.get('/documentos-por-facultad', middleware, documentosPorFacultad);
router.get('/egresados-trabajar-paises', middleware, egresadosTrabajarPaises);
router.get('/programa-educativo-informacion', middleware, programaEducativoInformacion);



export default router;