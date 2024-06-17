USE `proyecto` ;


-- -----------------------------------------------------
-- Creación de roles
-- -----------------------------------------------------
DROP ROLE IF EXISTS 'General-role';
CREATE ROLE 'General-role';

DROP ROLE IF EXISTS 'Egresado-role';
CREATE ROLE 'Egresado-role';

DROP ROLE IF EXISTS 'Empresa-role';
CREATE ROLE 'Empresa-role';

DROP ROLE IF EXISTS 'Administrativo-role';
CREATE ROLE 'Administrativo-role';

-- -----------------------------------------------------
-- Tabla Egresado
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Egresado TO 'general'@'localhost';
GRANT SELECT ON proyecto.Egresado TO 'Empresa'@'localhost';
GRANT ALL ON proyecto.Egresado TO 'Universidad'@'localhost';

-- Tabla Institucion_Educativa:
GRANT SELECT ON proyecto.Institucion_Educativa TO 'Juan'@'localhost';
GRANT SELECT ON proyecto.Institucion_Educativa TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Institucion_Educativa TO 'Universidad'@'localhost';

-- Tabla Facultad externa:
GRANT SELECT, INSERT, UPDATE ON proyecto.Facultad_Externa TO 'Universidad'@'localhost';

-- Tabla Programa Educativo Externo:
GRANT SELECT, INSERT, UPDATE ON proyecto.Programa_Educativo_Externo TO 'Universidad'@'localhost';

-- Tabla Historia_academca_Externa:
GRANT SELECT, INSERT, UPDATE ON proyecto.Historia_academca_Externa TO 'Universidad'@'localhost';

-- Tabla Facultad_UNAL:
GRANT SELECT, INSERT, UPDATE ON proyecto.Facultad_UNAL TO 'Universidad'@'localhost';

-- Tabla Programa Educativo UNAL
GRANT SELECT, INSERT, UPDATE ON proyecto.Programa_Educativo_UNAL TO 'Universidad'@'localhost';

-- Tabla Historia_academca_UNAL:
GRANT SELECT, INSERT, UPDATE ON proyecto.Historia_academca_UNAL TO 'Universidad'@'localhost';

-- Empresa:
GRANT SELECT ON proyecto.Empresa TO 'Juan'@'localhost';
GRANT ALL ON proyecto.Empresa TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Empresa TO 'Universidad'@'localhost';

-- Trabajo:
GRANT SELECT ON proyecto.Trabajo TO 'Juan'@'localhost';
GRANT ALL ON proyecto.Trabajo TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Trabajo TO 'Universidad'@'localhost';

-- Convocatória:
GRANT SELECT ON proyecto.Convocatoria TO 'Juan'@'localhost';
GRANT ALL ON proyecto.Convocatoria TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Convocatoria TO 'Universidad'@'localhost';

-- Postulado_Convocatoria:
GRANT SELECT, INSERT ON proyecto.Postulado_Convocatoria TO 'Juan'@'localhost';
GRANT SELECT  ON proyecto.Postulado_Convocatoria TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Postulado_Convocatoria TO 'Universidad'@'localhost';

-- Selección_convocatória
GRANT SELECT ON proyecto.Selección_convocatória TO 'Juan'@'localhost';
GRANT SELECT, INSERT ON proyecto.Selección_convocatória TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Selección_convocatória TO 'Universidad'@'localhost';

-- Documento_Investigacion:
GRANT SELECT ON proyecto.Documento_Investigacion TO 'Juan'@'localhost';
GRANT SELECT ON proyecto.Documento_Investigacion TO 'Empresa'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Documento_Investigacion TO 'Universidad'@'localhost';

-- Historial_Laboral:
GRANT SELECT, INSERT, UPDATE ON proyecto.Historial_Laboral TO 'Empresa'@'localhost';
GRANT SELECT ON proyecto.Historial_Laboral TO 'Universidad'@'localhost';

-- Dialogo_con_egresados:
GRANT SELECT, INSERT, UPDATE ON proyecto.Dialogo_con_egresados TO 'Universidad'@'localhost';

-- Conferensista_dialogo_egresados
GRANT SELECT, INSERT, UPDATE ON proyecto.Conferensista_dialogo_egresados TO 'Universidad'@'localhost';

-- Catedra_con_egresados:
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'Empresa'@'localhost';
GRANT SELECT, INSERT, UPDATE ON proyecto.Catedra_con_egresados TO 'Universidad'@'localhost';