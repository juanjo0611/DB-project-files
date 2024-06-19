import post_new_catedra from "../Procedures/catedras/post_new_catedra.js";

export const postNewCatedra = async (req, res) => {  
  const { role } = req;
  const {
    Nombre_catedra,
    Docente_coordinador,
    Descripcion,
    Modalidad,
    Fecha_inicio,
    Fecha_final,
    Hora_inicio,
    Hora_final,
    Id_facultad,
    Egresados_coordinadores
  } = req.body;

  try {
    const response = await post_new_catedra({
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
    });
    return res.status(200).json(response);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}