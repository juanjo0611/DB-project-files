import get_public_catedras from "../Views/catedras.js";
import get_public_convocatorias from "../Views/convocatorias.js";
import documentos_por_facultad from "../Views/documentos_por_facultad.js";
import egresados_trabajar_paises from "../Views/egresados_trabajar_paises.js";
import programa_educativo_informacion from "../Views/programa_educativo_informacion.js";

export const documentosPorFacultad = async (req, res) => {
  const { role } = req;

  try {
    const response = await documentos_por_facultad({ role });
    return res.status(200).json(response)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}

export const egresadosTrabajarPaises = async (req, res) => {
  const { role } = req;

  try {
    const response = await egresados_trabajar_paises({ role });
    return res.status(200).json(response)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}

export const programaEducativoInformacion = async (req, res) => {
  const { role } = req;

  try {
    const response = await programa_educativo_informacion({ role });
    return res.status(200).json(response)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}

export const getPulicCatedras = async (req, res) => {
  const { role } = req;

  try {
    const response = await get_public_catedras({ role });
    return res.status(200).json(response)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}

export const getPulicConvocatorias = async (req, res) => {
  const { role } = req;

  try {
    const response = await get_public_convocatorias({ role });
    return res.status(200).json(response)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}
