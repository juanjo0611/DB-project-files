import { callProcedure } from "../../config/call_procedure.js";

const get_documentos_investigacion_by_egresado = async ({ Id_egresado, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'egresado_documento_investigacion',
      params: [Id_egresado],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_documentos_investigacion_by_egresado;