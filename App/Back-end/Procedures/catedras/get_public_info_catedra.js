import { callProcedure } from "../../config/call_procedure.js";

const get_public_info_catedra = async ({ Id_catedra, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'info_catedra',
      params: [Id_catedra],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_public_info_catedra;