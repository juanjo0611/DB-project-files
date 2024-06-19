import { callProcedure } from "../../config/call_procedure.js";

const get_historia_academica_unal_by_egresado = async ({ Id_egresado, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'egresado_historia_academica_unal',
      params: [Id_egresado],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_historia_academica_unal_by_egresado;