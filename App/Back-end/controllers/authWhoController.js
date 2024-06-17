import { ROLES, SECRET } from "../utilities/globalVariables.js";
import jwt from 'jsonwebtoken';

export const whoAmI = async (req, res) => {
  const token = req.header('x-auth-token') ?? '';

  console.log('TOKEN -> ', token);

  try {
    const token_content = jwt.verify(token, SECRET);
    res.status(200).json(token_content);
  }
  catch (error) {
    // Token inválido
    res.status(200).json({
      content: {
        role: ROLES.GENERAL,
      }
    })
  }
}