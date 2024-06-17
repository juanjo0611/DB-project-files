import { createConnection } from "mysql2/promise";
import { DB_INFO } from "../utilities/globalVariables.js";

export async function getConnection({ db_user, db_password }) {
  try {
    return await createConnection({
      host: DB_INFO.HOST,
      port: DB_INFO.PORT,
      database: DB_INFO.NAME,
      user: db_user,
      password: db_password,
    });
  } catch (e) {
    console.error(e);
    throw new Error;
  }
}