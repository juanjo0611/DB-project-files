export const PORT = 4000;
export const SECRET = 'LADY_BOY_IN_TAILANDIA';
export const TOKEN_EXP_TIME = 7300;

export const DB_INFO = {
  PORT: 3306,
  HOST: 'localhost',
  NAME: 'proyecto'
}

export const ROLES = {
  GENERAL: 'general',
  EGRESADO: 'egresado',
  EMPRESA: 'empresa',
  ADMINISTRATIVO: 'administrativo'
}

export const DB_CREDENTIALS = {
  general: {
    user: 'general',
    password: 'generalPassword'
  },
  egresado: {
    user: 'egresado',
    password: 'egresadoPassword'
  },
  empresa: {
    user: 'empresa',
    password: 'empresaPassword'
  },
  administrativo: {
    user: 'administrativo',
    password: 'administrativoPassword'
  }
  // general, egresado, empresa, administrativo
}