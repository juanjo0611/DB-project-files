import put_info_egresado from "../Procedures/egresados/put_info_egresado.js";

export const putInfoEgresado = async (req, res) => {
  const { id, role } = req;
  const {
    Nom_egresado,
    Ape_egresado,
    Genero,
    Grupo_etnico,
    Celular_egresado,
    Direccion_contacto,
    Pais_egresado,
  } = req.body;

  try {
    const response = await put_info_egresado({
      Id_egresado: id,
      Nom_egresado,
      Ape_egresado,
      Genero,
      Grupo_etnico,
      Celular_egresado,
      Direccion_contacto,
      Pais_egresado,
      role
    });
    return res.status(200).json(response);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}