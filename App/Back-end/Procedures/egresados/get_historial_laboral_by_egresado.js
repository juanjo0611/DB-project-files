import { callProcedure } from "../../config/call_procedure.js";

const get_historial_laboral_by_egresado = async ({ Id_egresado, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'trabajo_egresado',
      params: [Id_egresado],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_historial_laboral_by_egresado;