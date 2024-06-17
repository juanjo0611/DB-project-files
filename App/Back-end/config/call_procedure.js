import { getConnection } from "./db.js";

const textQueryProcedure = ({ procedureName }) => {
  return 'Callr'
}

export const callProcedures = async ({procedureName, role}) => {
  let connection;
  try {
    connection = await getConnection({
      db_user: 'root',
      db_password: 'Contraseña123*'
    })
    const textQuery = textQueryProcedure({
      procedureName
    });
  }
}

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
}

