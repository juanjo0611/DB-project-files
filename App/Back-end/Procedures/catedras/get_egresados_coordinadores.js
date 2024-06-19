import { callProcedure } from "../../config/call_procedure.js";

const get_egresados_coordinadores = async ({ Id_catedra, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'egresados_coordinar_catedra',
      params: [Id_catedra],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_egresados_coordinadores;