import delete_catedra from "../Procedures/catedras/delete_catedra.js";

export const deleteCatedra = async (req, res) => {
  const { id } = req.params;

  try {
    const empresa = await delete_catedra({ Id_catedra: id, role: req.role });
    return res.status(200).json(empresa);
  }
  catch (error) {
    console.log(error);
    return res.status(500).json({ msg: 'Something was wrong' });
  }
}