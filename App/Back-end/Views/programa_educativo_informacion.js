import { callView } from "../config/call_view.js";

const programa_educativo_informacion = async ({ role }) => {
  try {
    const response = await callView({
      viewName: 'programa_educativo_informacion',
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default programa_educativo_informacion;