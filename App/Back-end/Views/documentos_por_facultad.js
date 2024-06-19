import { callView } from "../config/call_view.js";

const documentos_por_facultad = async ({ role }) => {
  try {
    const response = await callView({
      viewName: 'documentos_por_facultad',
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default documentos_por_facultad;