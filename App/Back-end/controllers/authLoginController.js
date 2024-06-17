import get_egresado_for_login from "../Procedures/login/get_egresado_for_login.js";
import get_empresa_for_login from "../Procedures/login/get_empresa_for_login.js";
import { DB_CREDENTIALS, ROLES, SECRET } from "../utilities/globalVariables.js";
import jwt from 'jsonwebtoken'

// @POST
export const loginEgresado = async (req, res) => {
  const { dni, password } = req.body;

  // Revisar que los tipos de datos sean los correctos
  if (typeof dni !== 'number' || typeof password !== 'string') {
    return res.status(400).json({ msg: 'Invalid data types' });
  }

  try {
    // Revisar que el egresado esté registrado
    const egresado_list = await get_egresado_for_login({ Id_egresado: dni });
    if (egresado_list.length === 0) {
      return res.status(404).json({msg: 'Egresado doesn`t exist'});
    }
    const egresado = egresado_list[0];

    // Revisar la contraseña
    if (password !== egresado.Password_egresado) {
      return res.status(406).json({ msg: 'Incorrect password' })
    }

    // En caso de ser todo correcto, Crear y firmar un Token
    const payload = {
      content : {
        dni,
        name: `${egresado.Nom_egresado} ${egresado.Ape_egresado}`,
        role: ROLES.EGRESADO
      }
    }
    jwt.sign(
      payload,
      SECRET,
      {expiresIn: 300}, // 5 minutos <-> 300 segundos
      (error, token) => {
        if (error) throw error;
        // Mensaje de confirmación
        res.json({ token });
      }
    );
  }
  catch (error) {
    console.log(error);
  }
}

// @POST
export const loginEmpresa = async (req, res) => {
  const { nit, password } = req.body;
  
  // Revisar que los tipos de datos sean los correctos
  if (typeof nit !== 'number' || typeof password !== 'string') {
    return res.status(400).json({ msg: 'Invalid data types' });
  }

  try {
    // Revisar que la empresa esté registrada
    const empresa_list = await get_empresa_for_login({ Nit_empresa: nit});
    if (empresa_list.length === 0) {
      return res.status(404).json({msg: 'Empresa doesn`t exist'})
    }
    const empresa = empresa_list[0];

    // Revisar la contraseña
    if (password !== empresa.Password_empresa) {
      return res.status(406).json({ msg: 'Incorrect password' })
    }

    // En caso de ser todo correcto, Crear y firmar un Token
    const payload = {
      content : {
        nit,
        name: empresa.Nom_Empresa,
        role: ROLES.EMPRESA
      }
    }
    jwt.sign(
      payload,
      SECRET,
      {expiresIn: 300}, // 5 minutos <-> 300 segundos
      (error, token) => {
        if (error) throw error;
        // Mensaje de confirmación
        res.json({ token });
      }
    );
  }
  catch (error) {
    console.log(error)
  }
}

// @POST
export const loginAdministrativo = async (req, res) => {
  const { user, password } = req.body;

  // Revisar que los tipos de datos sean los correctos
  if (typeof user !== 'string' || typeof password !== 'string') {
    return res.status(400).json({ msg: 'Invalid data types' });
  }

  try {    
    // Revisar las credenciales
    if (
      user !== DB_CREDENTIALS.administrativo.user ||
      password !== DB_CREDENTIALS.administrativo.password
    ) {
      return res.status(406).json({ msg: 'Incorrect password' })
    }

    // En caso de ser todo correcto, Crear y firmar un Token
    const payload = {
      content : {
        nit,
        name: 'Administrativo',
        role: ROLES.ADMINISTRATIVO
      }
    }
    jwt.sign(
      payload,
      SECRET,
      {expiresIn: 300}, // 5 minutos <-> 300 segundos
      (error, token) => {
        if (error) throw error;
        // Mensaje de confirmación
        res.json({ token });
      }
    );
  }
  catch (error) {
    console.log(error)
  }
}






/* export const test = async (req, res) => {
  try {
    const response = await callProcedure({
      procedureName: 'info_inicio_sesion_egresado',
      params: [2]
    });
    res.status(200).json({ msg: response });
  } catch (error) {
    res.status(401).json({msg: 'Falló la consulta'});
  }
} */