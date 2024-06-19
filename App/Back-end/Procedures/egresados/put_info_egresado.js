import { callProcedure } from "../../config/call_procedure.js";

const put_info_egresado = async ({
  Id_egresado,
  Nom_egresado,
  Ape_egresado,
  Genero,
  Grupo_etnico,
  Celular_egresado,
  Direccion_contacto,
  Pais_egresado,
  role
}) => {
  try {
    const response = await callProcedure({
      procedureName: 'editar_informacion_usuario_egresado',
      params: [Id_egresado, Nom_egresado, Ape_egresado, Genero, Grupo_etnico, Celular_egresado, Direccion_contacto, Pais_egresado],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default put_info_egresado;