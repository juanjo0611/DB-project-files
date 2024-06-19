import { callView } from "../config/call_view.js";

const get_public_catedras = async ({ role }) => {
  try {
    const response = await callView({
      viewName: 'catedras',
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default get_public_catedras;