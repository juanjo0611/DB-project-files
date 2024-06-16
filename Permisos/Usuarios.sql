USE `proyecto` ;


-- -----------------------------------------------------
-- Usuario general, usado para consultas sin iniciar sesión
-- -----------------------------------------------------
DROP USER IF EXISTS 'general'@'localhost';
CREATE USER 'general'@'localhost' IDENTIFIED BY 'generalPassword';
GRANT 'General-role' TO 'general'@'localhost';
SET DEFAULT ROLE 'General-role' TO 'general'@'localhost';


-- -----------------------------------------------------
-- Usuario egresado, usado para consultas cuando
-- la persona inicia sesión como egresado
-- -----------------------------------------------------
DROP USER IF EXISTS 'egresado'@'localhost';
CREATE USER 'egresado'@'localhost' IDENTIFIED BY 'egresadoPassword';
GRANT 'Egresado-role' TO 'egresado'@'localhost';
SET DEFAULT ROLE 'Egresado-role' TO 'egresado'@'localhost';


-- -----------------------------------------------------
-- Usuario empresa, usado para consultas cuando
-- la persona inicia sesión como empresa
-- -----------------------------------------------------
DROP USER IF EXISTS 'empresa'@'localhost';
CREATE USER 'empresa'@'localhost' IDENTIFIED by 'empresaPassword';
GRANT 'Empresa-role' TO 'empresa'@'localhost';
SET DEFAULT ROLE 'Empresa-role' TO 'empresa'@'localhost';


-- -----------------------------------------------------
-- Usuario administrativo, usado para consultas cuando
-- la persona inicia sesión como administrativo
-- -----------------------------------------------------
DROP USER IF EXISTS 'administrativo'@'localhost';
CREATE USER 'administrativo'@'localhost' IDENTIFIED by 'administrativoPassword';
GRANT 'Administrativo-role' TO 'administrativo'@'localhost';
SET DEFAULT ROLE 'Administrativo-role' TO 'administrativo'@'localhost';
