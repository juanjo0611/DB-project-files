import { DB_CREDENTIALS } from "../utilities/globalVariables.js";
import { getConnection } from "./db.js";

const wrapIfString = (str) => {
  if (typeof str === 'string') {
    return ('"' + str + '"')
  }
  return str;
}

const textQueryProcedure = ({ procedureName, params }) => {
  const wrapped = params.map(param => wrapIfString(param))
  const textParams = wrapped.join(', ');
  return `CALL ${procedureName}(${textParams})`
}

export const callProcedure = async ({procedureName, params, role}) => {
  const db_user = DB_CREDENTIALS[role].user;
  const db_password = DB_CREDENTIALS[role].password;
  let connection;
  try {
    connection = await getConnection({
      db_user,
      db_password
    });
    const textQuery = textQueryProcedure({
      procedureName,
      params
    });
    const [results, fields] = await connection.query(
      textQuery
    );
    const response = results?.[0] ?? results;
    return response
  }
  catch (error) {
    console.log(error);
  }
  finally {if (connection) connection.end();}
}
/* 
export const doQuery = async () => {
  let connection;
  try {
    connection = await getConnection({
      db_user: 'root',
      db_password: 'Contraseña123*'
    })
    const tquery = 'SELECT * FROM Egresado;';
    const [results, fields] = await connection.query(
      'SELECT * FROM `egresado`'
    )
    // const response = await connection.query(tquery);
    return results;
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    if (connection) {
      await connection.end();
    }
  }
} */

