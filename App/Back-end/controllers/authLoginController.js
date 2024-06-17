import { callProcedure } from "../config/call_procedure.js";
import get_egresado_for_login from "../Procedures/login/get_egresado_for_login.js";


// @POST
export const loginEgresado = async (req, res) => {
  const {dni, password} = req.body;

  try {
    const egresado = await get_egresado_for_login({ Id_egresado: dni });
    res.status(200).json(egresado);
  }
  catch (error) {
    console.log(error);
  }
}







export const test = async (req, res) => {
  try {
    const response = await callProcedure({
      procedureName: 'info_inicio_sesion_egresado',
      params: [2]
    });
    res.status(200).json({ msg: response });
  } catch (error) {
    res.status(401).json({msg: 'Falló la consulta'});
  }
}