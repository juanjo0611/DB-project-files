import { callProcedure } from "../../config/call_procedure.js";

const get_egresado_for_login = async ({ Id_egresado }) => {
  try {
    const response = await callProcedure({
      procedureName: 'info_inicio_sesion_egresado',
      params: [Id_egresado]
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_egresado_for_login;
