import { callProcedure } from "../../config/call_procedure.js";

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