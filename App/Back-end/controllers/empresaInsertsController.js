import post_new_empresa from "../Procedures/empresas/post_new_empresa.js";

export const postNewEmpresa = async (req, res) => {  
  const { role } = req;
  const {
    Nit_empresa,
    Password_empresa,
    Nom_empresa,
    Actividad_economica_principal,
    Nombre_gerente,
    Pais_empresa,
    Ciudad_empresa,
    Direccion_empresa,
    Descripcion,
  } = req.body;
  console.log(Nit_empresa)

  try {
    const response = await post_new_empresa({
      Nit_empresa,
      Password_empresa,
      Nom_empresa,
      Actividad_economica_principal,
      Nombre_gerente,
      Pais_empresa,
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