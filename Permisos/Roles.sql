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
GRANT SELECT ON proyecto.Egresado TO 'General-role';
GRANT SELECT, UPDATE ON proyecto.Egresado TO 'Egresado-role';
GRANT SELECT ON proyecto.Egresado TO 'Empresa-role';


-- -----------------------------------------------------
-- Tabla Empresa
-- -----------------------------------------------------
GRANT SELECT, INSERT ON proyecto.Empresa TO 'General-role';
GRANT SELECT ON proyecto.Empresa TO 'Egresado-role';
GRANT SELECT, UPDATE ON proyecto.Empresa TO 'Empresa-role';
GRANT SELECT ON proyecto.Empresa TO 'Administrativo-role';

-- -----------------------------------------------------
-- Tabla Historia_academica_UNAL
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Historia_academica_UNAL TO 'General-role';
GRANT SELECT ON proyecto.Historia_academica_UNAL TO 'Egresado-role';
GRANT SELECT ON proyecto.Historia_academica_UNAL TO 'Empresa-role';
GRANT SELECT ON proyecto.Historia_academica_UNAL TO 'Administrativo-role';


-- -----------------------------------------------------
-- Tabla Historia_academica_externa
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Historia_academica_externa TO 'Egresado-role';
GRANT SELECT ON proyecto.Historia_academica_externa TO 'Empresa-role';


-- -----------------------------------------------------
-- Programa_educativo_UNAL
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Programa_educativo_UNAL TO 'General-role';
GRANT SELECT ON proyecto.Programa_educativo_UNAL TO 'Egresado-role';
GRANT SELECT ON proyecto.Programa_educativo_UNAL TO 'Empresa-role';
GRANT SELECT ON proyecto.Programa_educativo_UNAL TO 'Administrativo-role';


-- -----------------------------------------------------
-- Facultad_UNAL
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Facultad_UNAL TO 'General-role';
GRANT SELECT ON proyecto.Facultad_UNAL TO 'Egresado-role';
GRANT SELECT ON proyecto.Facultad_UNAL TO 'Empresa-role';
GRANT SELECT ON proyecto.Facultad_UNAL TO 'Administrativo-role';


-- -----------------------------------------------------
-- Tabla Documento_investigacion
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Documento_investigacion TO 'Egresado-role';
GRANT SELECT ON proyecto.Documento_investigacion TO 'Empresa-role';


-- -----------------------------------------------------
-- Tabla Participacion_investigacion
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Participacion_investigacion TO 'General-role';
GRANT SELECT ON proyecto.Participacion_investigacion TO 'Egresado-role';
GRANT SELECT ON proyecto.Participacion_investigacion TO 'Empresa-role';
GRANT SELECT ON proyecto.Participacion_investigacion TO 'Administrativo-role';


-- -----------------------------------------------------
-- Tabla Trabajo
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Trabajo TO 'General-role';
GRANT SELECT ON proyecto.Trabajo TO 'Egresado-role';
GRANT SELECT ON proyecto.Trabajo TO 'Empresa-role';
GRANT SELECT ON proyecto.Trabajo TO 'Administrativo-role';


-- -----------------------------------------------------
-- Tabla Catedra_con_egresados
-- -----------------------------------------------------
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'General-role';
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'Egresado-role';
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'Empresa-role';
GRANT SELECT ON proyecto.Catedra_con_egresados TO 'Administrativo-role';


-- -----------------------------------------------------
-- Procedimientos almacenados:
-- -----------------------------------------------------
GRANT EXECUTE ON PROCEDURE info_inicio_sesion_egresado TO 'General-role';
GRANT EXECUTE ON PROCEDURE info_inicion_sesion_empresa TO 'General-role';
GRANT EXECUTE ON PROCEDURE info_empresa TO 'General-role';

GRANT EXECUTE ON PROCEDURE informacion_usuario_egresado TO 'Egresado-role';
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_unal TO 'Egresado-role'; -- Traae la historia académica de la unal de un egresado por id
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_externa TO 'Egresado-role'; -- Trae la historia académica externa de un egresado por id
GRANT EXECUTE ON PROCEDURE egresado_documento_investigacion TO 'Egresado-role'; -- Trae los documentos de investigación de un egresado por id
GRANT EXECUTE ON PROCEDURE trabajo_egresado TO 'Egresado-role'; -- Trae los trabajos que ha realizado un egresado dando un id de un egresado
GRANT EXECUTE ON PROCEDURE editar_informacion_usuario_egresado TO 'Egresado-role'; -- Edita la información de un registro de la tabla Egresado
GRANT EXECUTE ON PROCEDURE info_empresa TO 'Egresado-role';

GRANT EXECUTE ON PROCEDURE informacion_usuario_egresado TO 'Empresa-role';
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_unal TO 'Empresa-role'; -- Traae la historia académica de la unal de un egresado por id
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_externa TO 'Empresa-role'; -- Trae la historia académica externa de un egresado por id
GRANT EXECUTE ON PROCEDURE egresado_documento_investigacion TO 'Empresa-role'; -- Trae los documentos de investigación de un egresado por id
GRANT EXECUTE ON PROCEDURE trabajo_egresado TO 'Empresa-role'; -- Trae los trabajos que ha realizado un egresado dando un id de un egresado
GRANT EXECUTE ON PROCEDURE info_empresa TO 'Empresa-role';
GRANT EXECUTE ON PROCEDURE editar_info_empresa TO 'Empresa-role';

GRANT EXECUTE ON PROCEDURE info_empresa TO 'Administrativo-role';


-- -----------------------------------------------------
-- Vistas
-- -----------------------------------------------------
GRANT SELECT ON egresados_trabajar_paises TO 'General-role';
GRANT SELECT ON egresados_trabajar_paises TO 'Egresado-role';
GRANT SELECT ON egresados_trabajar_paises TO 'Empresa-role';
GRANT SELECT ON egresados_trabajar_paises TO 'Administrativo-role';

GRANT SELECT ON programa_educativo_informacion TO 'General-role';
GRANT SELECT ON programa_educativo_informacion TO 'Egresado-role';
GRANT SELECT ON programa_educativo_informacion TO 'Empresa-role';
GRANT SELECT ON programa_educativo_informacion TO 'Administrativo-role';

GRANT SELECT ON documentos_por_facultad TO 'General-role';
GRANT SELECT ON documentos_por_facultad TO 'Egresado-role';
GRANT SELECT ON documentos_por_facultad TO 'Empresa-role';
GRANT SELECT ON documentos_por_facultad TO 'Administrativo-role';