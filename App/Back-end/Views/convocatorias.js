import { callView } from "../config/call_view.js";

const get_public_convocatorias = async ({ role }) => {
  try {
    const response = await callView({
      viewName: 'convocatorias',
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_public_convocatorias;