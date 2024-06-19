import { DB_CREDENTIALS } from "../utilities/globalVariables.js";
import { getConnection } from "./db.js";

const textQueryView = ({ viewName }) => {
  return `SELECT * FROM ${viewName}`
}

export const callView = async ({ viewName, role }) => {
  const db_user = DB_CREDENTIALS[role].user;
  const db_password = DB_CREDENTIALS[role].password;
  let connection;
  try {
    connection = await getConnection({
      db_user,
      db_password
    });
    const textQuery = textQueryView({
      viewName,
    });
    const [results, fields] = await connection.query(
      textQuery
    );
    return results
  }
  catch (error) {
    console.log(error);
  }
  finally { if (connection) connection.end(); }
}


