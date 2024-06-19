import { callProcedure } from "../../config/call_procedure.js";

// (IN P_nit_empresa BIGINT,IN P_nom_Empresa varchar(70),IN P_actividad_economica_principal varchar(60),
// IN P_nombre_gerente varchar(70),IN P_ciudad_empresa varchar(60),IN P_direccion_empresa varchar(70),IN P_descripcion varchar(500))

const post_new_empresa = async ({
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
}) => {
  try {
    const response = await callProcedure({
      procedureName: 'registrar_empresa',
      params: [Nit_empresa, Password_empresa, Nom_empresa, Actividad_economica_principal, Nombre_gerente, Pais_empresa, Ciudad_empresa, Direccion_empresa, Descripcion],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default post_new_empresa;