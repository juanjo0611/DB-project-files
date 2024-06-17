import { getConnection } from "./db.js";

const textQueryProcedure = ({ procedureName, params }) => {
  const textParams = params.join(', ');
  return `CALL ${procedureName}(${textParams})`
}

export const callProcedure = async ({procedureName, params, role}) => {
  let connection;
  try {
    connection = await getConnection({
      db_user: 'root',
      db_password: 'Contraseña123*'
    });
    const textQuery = textQueryProcedure({
      procedureName,
      params
    });
    const [results, fields] = await connection.query(
      textQuery
    );
    const [response, queryInfo] = results;
    return response
  }
  catch (error) {console.log(error);}
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

