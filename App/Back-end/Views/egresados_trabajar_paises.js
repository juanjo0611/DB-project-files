import { callView } from "../config/call_view.js";

const egresados_trabajar_paises = async ({ role }) => {
  try {
    const response = await callView({
      viewName: 'egresados_trabajar_paises',
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default egresados_trabajar_paises;