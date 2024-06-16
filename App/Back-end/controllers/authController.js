exports.test = async (req, res) => {
  console.log('TEST llamado');
  res.status(200).json({ msg: "test" });
}