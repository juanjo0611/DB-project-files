import { callProcedure } from "../../config/call_procedure.js";

const delete_catedra = async ({ Id_catedra, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'eliminar_catedra',
      params: [Id_catedra],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default delete_catedra;