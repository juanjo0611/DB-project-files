import { doQuery } from "../config/call_procedure.js";


export const test = async (req, res) => {
  try {
    const response = await doQuery();
    res.status(200).json({ msg: response });
  } catch (error) {
    res.status(401).json({msg: 'Falló la consulta'});
  }
}