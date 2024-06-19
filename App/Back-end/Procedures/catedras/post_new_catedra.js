import { callProcedure } from "../../config/call_procedure.js";

// (IN P_nit_empresa BIGINT,IN P_nom_Empresa varchar(70),IN P_actividad_economica_principal varchar(60),
// IN P_nombre_gerente varchar(70),IN P_ciudad_empresa varchar(60),IN P_direccion_empresa varchar(70),IN P_descripcion varchar(500))

const post_new_catedra = async ({
  Nombre_catedra,
  Docente_coordinador,
  Descripcion,
  Modalidad,
  Fecha_inicio,
  Fecha_final,
  Hora_inicio,
  Hora_final,
  Id_facultad,
  Egresados_coordinadores,
  role
}) => {
  try {
    const response = await callProcedure({
      procedureName: 'insertar_catedra',
      params: [Nombre_catedra, Docente_coordinador, Descripcion, Modalidad, Fecha_inicio, Fecha_final, Hora_inicio, Hora_final, Id_facultad, Egresados_coordinadores],
      role
    });
    return response;
  }
  catch (error) {
    console.log(error);
  }
}
export default post_new_catedra;