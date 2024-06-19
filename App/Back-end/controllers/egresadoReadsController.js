import get_documentos_investigacion_by_egresado from "../Procedures/egresados/get_documentos_investigacion_by_egresado.js";
import get_full_info_egresado from "../Procedures/egresados/get_full_info_egresado.js";
import get_historia_academica_externa_by_egresado from "../Procedures/egresados/get_historia_academica_externa_by_egresado.js";
import get_historia_academica_unal_by_egresado from "../Procedures/egresados/get_historia_academica_unal_by_egresado.js";
import get_historial_laboral_by_egresado from "../Procedures/egresados/get_historial_laboral_by_egresado.js";

export const getFullInfoEgresado = async (req, res) => {
  const id = req.id;

  try {
    const egresado = await get_full_info_egresado({ Id_egresado: id, role: req.role });
    return res.status(200).json(egresado)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}
export const getFullInfoEgresadoById = async (req, res) => {
  const { id } = req.params;

  try {
    const egresado = await get_full_info_egresado({ Id_egresado: id, role: req.role });
    return res.status(200).json(egresado);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}


export const getHistoriaAcademicaUnalByEgresado = async (req, res) => {
  const id = req.id;

  try {
    const historia_academica = await get_historia_academica_unal_by_egresado({ Id_egresado: id, role: req.role });
    return res.status(200).json(historia_academica)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}
export const getHistoriaAcademicaUnalByEgresadoById = async (req, res) => {
  const { id } = req.params;

  try {
    const historia_academica = await get_historia_academica_unal_by_egresado({ Id_egresado: id, role: req.role });
    return res.status(200).json(historia_academica);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}


export const getHistoriaAcademicaExternaByEgresado = async (req, res) => {
  const id = req.id;

  try {
    const historia_academica = await get_historia_academica_externa_by_egresado({ Id_egresado: id, role: req.role });
    return res.status(200).json(historia_academica);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}
export const getHistoriaAcademicaExternaByEgresadoById = async (req, res) => {
  const { id } = req.params;

  try {
    const historia_academica = await get_historia_academica_externa_by_egresado({ Id_egresado: id, role: req.role });
    return res.status(200).json(historia_academica);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}


export const getDocumentosInvestigacionByEgresado = async (req, res) => {
  const id = req.id;

  try {
    const documentos = await get_documentos_investigacion_by_egresado({ Id_egresado: id, role: req.role})
    return res.status(200).json(documentos);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}
export const getDocumentosInvestigacionByEgresadoById = async (req, res) => {
  const { id } = req.params;

  try {
    const documentos = await get_documentos_investigacion_by_egresado({ Id_egresado: id, role: req.role})
    return res.status(200).json(documentos);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}


export const getHistorialLaboralByEgresado = async (req, res) => {
  const id = req.id;

  try {
    const historial_laboral = await get_historial_laboral_by_egresado({ Id_egresado: id, role: req.role});
    return res.status(200).json(historial_laboral);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}
export const getHistorialLaboralByEgresadoById = async (req, res) => {
  const { id } = req.params;

  try {
    const historial_laboral = await get_historial_laboral_by_egresado({ Id_egresado: id, role: req.role});
    return res.status(200).json(historial_laboral);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}