import express from 'express';
import { middleware } from '../middleware/middleware.js';
import { getDocumentosInvestigacionByEgresado, getDocumentosInvestigacionByEgresadoById, getFullInfoEgresado, getFullInfoEgresadoById, getHistoriaAcademicaExternaByEgresado, getHistoriaAcademicaExternaByEgresadoById, getHistoriaAcademicaUnalByEgresado, getHistoriaAcademicaUnalByEgresadoById, getHistorialLaboralByEgresado, getHistorialLaboralByEgresadoById } from '../controllers/egresadoReadsController.js';
import { putInfoEgresado } from '../controllers/egresadoUpdatesController.js';
const router = express.Router();

router.get('/get-info', middleware, getFullInfoEgresado);
router.get('/get-info/:id', middleware, getFullInfoEgresadoById);


router.get(
  '/get-historia-academica-unal',
  middleware,
  getHistoriaAcademicaUnalByEgresado
);
router.get(
  '/get-historia-academica-unal/:id',
  middleware,
  getHistoriaAcademicaUnalByEgresadoById
);


router.get(
  '/get-historia-academica-externa',
  middleware,
  getHistoriaAcademicaExternaByEgresado
);
router.get(
  '/get-historia-academica-externa/:id',
  middleware,
  getHistoriaAcademicaExternaByEgresadoById
);


router.get(
  '/get-documentos-investigacion',
  middleware,
  getDocumentosInvestigacionByEgresado
);
router.get(
  '/get-documentos-investigacion/:id',
  middleware,
  getDocumentosInvestigacionByEgresadoById
);


router.get(
  '/get-historial-laboral',
  middleware,
  getHistorialLaboralByEgresado
);
router.get(
  '/get-historial-laboral/:id',
  middleware,
  getHistorialLaboralByEgresadoById
);

// PUT ROUTES
router.put(
  '/put-edit-info',
  middleware,
  putInfoEgresado
);

export default router;
