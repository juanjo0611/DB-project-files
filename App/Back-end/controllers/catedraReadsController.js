import get_egresados_coordinadores from "../Procedures/catedras/get_egresados_coordinadores.js";
import get_public_info_catedra from "../Procedures/catedras/get_public_info_catedra.js";

export const getPublicInfoCatedra = async (req, res) => {
  const { id } = req.params;

  try {
    const empresa = await get_public_info_catedra({ Id_catedra: id, role: req.role });
    return res.status(200).json(empresa);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}

export const getEgresadosCoordinadores = async (req, res) => {
  const { id } = req.params;

  try {
    const empresa = await get_egresados_coordinadores({ Id_catedra: id, role: req.role });
    return res.status(200).json(empresa);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}
