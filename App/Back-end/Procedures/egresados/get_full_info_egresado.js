import { callProcedure } from "../../config/call_procedure.js";

const get_full_info_egresado = async ({ Id_egresado, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'informacion_usuario_egresado',
      params: [Id_egresado],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_full_info_egresado;