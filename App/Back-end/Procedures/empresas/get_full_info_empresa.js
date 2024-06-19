import { callProcedure } from "../../config/call_procedure.js";

const get_full_info_empresa = async ({ Nit, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'info_empresa',
      params: [Nit],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_full_info_empresa;