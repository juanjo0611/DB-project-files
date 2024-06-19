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


-- Tabla Egresados:
GRANT SELECT ON proyecto.Egresado TO 'general'@'localhost';
GRANT SELECT ON proyecto.Egresado TO 'egresado'@'localhost';
GRANT SELECT ON proyecto.Egresado TO 'empresa'@'localhost';
GRANT ALL ON proyecto.Egresado TO 'administrativo'@'localhost';

-- Tabla Institucion_Educativa:
GRANT SELECT ON proyecto.Institucion_Educativa TO 'general'@'localhost';
GRANT SELECT ON proyecto.Institucion_Educativa TO 'egresado'@'localhost';
GRANT SELECT ON proyecto.Institucion_Educativa TO 'empresa'@'localhost';
GRANT SELECT ON proyecto.Institucion_Educativa TO 'administrativo'@'localhost';

-- Tabla Facultad externa:
GRANT SELECT ON proyecto.Facultad_Externa TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Facultad_Externa TO 'administrativo'@'localhost';


-- Tabla Programa Educativo Externo:
GRANT SELECT ON proyecto.Programa_Educativo_Externo TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Programa_Educativo_Externo TO 'administrativo'@'localhost';

-- Tabla Historia_academca_Externa:
GRANT SELECT ON proyecto.Historia_academca_Externa TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Historia_academca_Externa TO 'administrativo'@'localhost';

-- Tabla Facultad_UNAL:
GRANT SELECT ON proyecto.Facultad_UNAL TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Facultad_UNAL TO 'administrativo'@'localhost';

-- Tabla Programa Educativo UNAL
GRANT SELECT ON proyecto.Programa_Educativo_UNAL TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Programa_Educativo_UNAL TO 'administrativo'@'localhost';

-- Tabla Historia_academica_UNAL:
GRANT SELECT ON proyecto.Historia_academica_UNAL TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Historia_academica_UNAL TO 'administrativo'@'localhost';

-- Empresa:
GRANT SELECT, INSERT ON proyecto.Empresa TO 'general'@'localhost';
GRANT SELECT ON proyecto.Empresa TO 'egresado'@'localhost';
GRANT ALL ON proyecto.Empresa TO 'empresa'@'localhost';
GRANT SELECT ON proyecto.Empresa TO 'administrativo'@'localhost';

-- Trabajo:
GRANT SELECT ON proyecto.Trabajo TO 'general'@'localhost';
GRANT SELECT ON proyecto.Trabajo TO 'egresado'@'localhost';
GRANT ALL ON proyecto.Trabajo TO 'empresa'@'localhost';
GRANT SELECT ON proyecto.Trabajo TO 'administrativo'@'localhost';

-- Convocatória:
GRANT SELECT ON proyecto.Convocatoria TO 'general'@'localhost';
GRANT SELECT ON proyecto.Convocatoria TO 'egresado'@'localhost';
GRANT ALL ON proyecto.Convocatoria TO 'empresa'@'localhost';
GRANT SELECT ON proyecto.Convocatoria TO 'administrativo'@'localhost';

-- Postulado_Convocatoria:
GRANT SELECT  ON proyecto.Postulado_Convocatoria TO 'general'@'localhost';
GRANT SELECT, INSERT ON proyecto.Postulado_Convocatoria TO 'egresado'@'localhost';
GRANT SELECT  ON proyecto.Postulado_Convocatoria TO 'empresa'@'localhost';
GRANT SELECT ON proyecto.Postulado_Convocatoria TO 'administrativo'@'localhost';

-- Seleccion_convocatoria
GRANT SELECT ON proyecto.Seleccion_convocatoria TO 'general'@'localhost';
GRANT SELECT ON proyecto.Seleccion_convocatoria TO 'egresado'@'localhost';
GRANT SELECT, INSERT ON proyecto.Seleccion_convocatoria TO 'empresa'@'localhost';
GRANT SELECT ON proyecto.Seleccion_convocatoria TO 'administrativo'@'localhost';

-- Documento_investigacion:
GRANT SELECT ON proyecto.Documento_investigacion TO 'general'@'localhost';
GRANT SELECT ON proyecto.Documento_investigacion TO 'egresado'@'localhost';
GRANT SELECT ON proyecto.Documento_investigacion TO 'empresa'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Documento_investigacion TO 'administrativo'@'localhost';

-- Participacion_investigacion:
GRANT SELECT ON proyecto.Participacion_investigacion TO 'general'@'localhost';

-- Dialogo_egresados_conferencia:
GRANT SELECT ON proyecto.Dialogo_egresados_conferencia TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Dialogo_egresados_conferencia  TO 'administrativo'@'localhost';

-- Dialogo_egresados_conversatorio: 
GRANT SELECT ON proyecto.Dialogo_egresados_conversatorio TO 'general'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Dialogo_egresados_conversatorio  TO 'administrativo'@'localhost';

-- Catedra_con_egresados:
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'general'@'localhost';
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'empresa'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Catedra_con_egresados TO 'administrativo'@'localhost';
