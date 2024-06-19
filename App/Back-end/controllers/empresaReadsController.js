import get_full_info_empresa from "../Procedures/empresas/get_full_info_empresa.js";

export const getFullInfoEmpresa = async (req, res) => {
  const { id, role } = req;

  try {
    const empresa = await get_full_info_empresa({ Nit: id, role });
    return res.status(200).json(empresa)
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong'});
  }
}
export const getFullInfoEmpresaById = async (req, res) => {
  const { id } = req.params;

  try {
    const empresa = await get_full_info_empresa({ Nit: id, role: req.role });
    return res.status(200).json(empresa);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}