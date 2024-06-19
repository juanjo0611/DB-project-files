import put_info_empresa from "../Procedures/empresas/put_info_empresa.js";

export const putInfoEmpresa = async (req, res) => {
  const { id, role } = req;
  const {
    Nom_empresa,
    Actividad_economica_principal,
    Nombre_gerente,
    Ciudad_empresa,
    Direccion_empresa,
    Descripcion,
  } = req.body;

  console.log(req)

  try {
    const response = await put_info_empresa({
      Nit_empresa: id,
      Nom_empresa,
      Actividad_economica_principal,
      Nombre_gerente,
      Ciudad_empresa,
      Direccion_empresa,
      Descripcion,
      role
    });
    return res.status(200).json(response);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}