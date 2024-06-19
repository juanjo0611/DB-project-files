import { callProcedure } from "../../config/call_procedure.js";

const get_empresa_for_login = async ({ Nit_empresa, role }) => {
  try {
    const response = await callProcedure({
      procedureName: 'info_inicion_sesion_empresa',
      params: [Nit_empresa],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_empresa_for_login;