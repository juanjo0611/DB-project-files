import { callProcedure } from "../../config/call_procedure.js";

// (IN P_nit_empresa BIGINT,IN P_nom_Empresa varchar(70),IN P_actividad_economica_principal varchar(60),
// IN P_nombre_gerente varchar(70),IN P_ciudad_empresa varchar(60),IN P_direccion_empresa varchar(70),IN P_descripcion varchar(500))

const put_info_empresa = async ({
  Nit_empresa,
  Nom_empresa,
  Actividad_economica_principal,
  Nombre_gerente,
  Ciudad_empresa,
  Direccion_empresa,
  Descripcion,
  role
}) => {
  try {
    const response = await callProcedure({
      procedureName: 'editar_info_empresa',
      params: [Nit_empresa, Nom_empresa, Actividad_economica_principal, Nombre_gerente, Ciudad_empresa, Direccion_empresa, Descripcion],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default put_info_empresa;