
-- -----------------------------------------------------
-- Schema proyecto
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `proyecto` ;
CREATE SCHEMA IF NOT EXISTS `proyecto` ;
USE `proyecto` ;

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado` (
  `Id_egresado` BIGINT(10),
  `Password_egresado` VARCHAR(100) NOT NULL,
  `Tipo_documento` VARCHAR(45) NOT NULL,
  `Nom_egresado` VARCHAR(50) NOT NULL COMMENT 'Nombre del egresado ',
  `Ape_egresado` VARCHAR(50) NOT NULL COMMENT 'Apellido del egresado ',
  `Fecha_nacimiento` DATE NOT NULL COMMENT 'Se refiere a la edad actaul del egresado ',
  `Genero` VARCHAR(30) NOT NULL DEFAULT "",
  `Grupo_etnico` VARCHAR(45) NOT NULL DEFAULT "",
  `Correo_egresado` VARCHAR(45) NOT NULL UNIQUE COMMENT 'El correo por el cual se puede contactar al egresado ',
  `Celular_egresado` BIGINT(10) NOT NULL COMMENT 'Número de contacto del egresado ',
  `Direccion_contacto` VARCHAR(60) NOT NULL DEFAULT "",
  `Pais_egresado` VARCHAR(60) NULL COMMENT 'Hace referencia al pais natal del egresado ',
  PRIMARY KEY (`Id_egresado`));

-- -----------------------------------------------------
-- Table `proyecto`.`Institucion_educativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Institucion_educativa` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Institucion_educativa` (
  `Id_ins_edu` INT AUTO_INCREMENT,
  `Nombre_inst_edu` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id_ins_edu`));

-- -----------------------------------------------------
-- Table `proyecto`.`Facultad_externa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Facultad_externa` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Facultad_externa` (
  `Id_facultad_externa` INT AUTO_INCREMENT,
  `Nombre_facultad_externa` VARCHAR(70) NOT NULL,
  `Decano_externo` VARCHAR(70) NOT NULL,
  `Id_ins_edu` INT NOT NULL,
  PRIMARY KEY (`Id_facultad_externa`),
  CONSTRAINT `fk_Facultad_externa_Id_ins_edu`
    FOREIGN KEY (`Id_ins_edu`)
    REFERENCES `proyecto`.`Institucion_educativa` (`Id_ins_edu`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Programa_educativo_externo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Programa_educativo_externo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Programa_educativo_externo` (
  `Id_programa_educativo_externo` INT AUTO_INCREMENT,
  `Nombre_programa_externo` VARCHAR(100) NOT NULL,
  `Id_facultad_externa` INT NOT NULL,
  `Tipo_programa` VARCHAR(45) NULL,
  `Modalidad` ENUM("Precencial","Virtual","Hibrida") NOT NULL,
  PRIMARY KEY (`Id_programa_educativo_externo`),
  CONSTRAINT `fk_Programa_educativo_externo_Id_facultad_externa`
    FOREIGN KEY (`Id_facultad_externa`)
    REFERENCES `proyecto`.`Facultad_externa` (`Id_facultad_externa`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Historia_academica_externa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Historia_academica_externa` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Historia_academica_externa` (
  `Id_historia_externa` INT AUTO_INCREMENT,
  `Id_programa_educativo_externo` INT NOT NULL COMMENT 'Carrera de la cual se graduó el estudiante ',
  `Id_egresado` BIGINT(10) NOT NULL,
  `Nota_final` FLOAT NOT NULL,
  `Fecha_entrada` DATE NOT NULL COMMENT 'Fecha en la cual ingreso a la carrera ',
  `Fecha_grado` DATE NULL COMMENT 'Fecxha en la cual el estudiante se graduó de la universidad y por ende salio de la misma (se admite el valor nulo ya que hay estudiantes que se hayan graduado de un pregrado pero aun no lo hacen de posgrado o se graduan de un pregrado y están cursando otro pregrado del cual no se han graduado)',
  PRIMARY KEY (`Id_historia_externa`),
  CONSTRAINT `fk_Historia_academca_externa_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Historia_academca_externa_Id_programa_educativo_externo`
    FOREIGN KEY (`Id_programa_educativo_externo`)
    REFERENCES `proyecto`.`Programa_educativo_externo` (`Id_programa_educativo_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Facultad_UNAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Facultad_UNAL` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Facultad_UNAL` (
  `Id_facultad_UNAL` INT AUTO_INCREMENT,
  `Nombre_facultad_UNAL` VARCHAR(70) NOT NULL,
  `Sede_UNAL` VARCHAR(45) NOT NULL DEFAULT "",
  `Decano_UNAL` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`Id_facultad_UNAL`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Programa_educativo_UNAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Programa_educativo_UNAL` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Programa_educativo_UNAL` (
  `Id_programa_educativo_UNAL` INT AUTO_INCREMENT,
  `Nom_programa_UNAL` VARCHAR(100) NOT NULL,
  `Id_facultad_UNAL` INT NOT NULL,
  `Tipo_programa` VARCHAR(45) NULL,
  `Modalidad` ENUM("Precencial","Virtual","Hibrida") NOT NULL,
  PRIMARY KEY (`Id_programa_educativo_UNAL`),
  CONSTRAINT `fk_Programa_educativo_UNAL_Id_facultad_UNAL`
    FOREIGN KEY (`Id_facultad_UNAL`)
    REFERENCES `proyecto`.`Facultad_UNAL` (`Id_facultad_UNAL`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Historia_academica_UNAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Historia_academica_UNAL` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Historia_academica_UNAL` (
  `Id_historia_UNAL` INT AUTO_INCREMENT,
  `Id_programa_educativo_UNAL` INT NOT NULL COMMENT 'Carrera de la cual se graduó el estudiante ',
  `Id_egresado` BIGINT(10) NOT NULL,
  `Nota_final` FLOAT NOT NULL,
  `Fecha_entrada` DATE NOT NULL COMMENT 'Fecha en la cual ingreso a la carrera ',
  `Fecha_grado` DATE NULL COMMENT 'Fecxha en la cual el estudiante se graduó de la universidad y por ende salio de la misma (se admite el valor nulo ya que hay estudiantes que se hayan graduado de un pregrado pero aun no lo hacen de posgrado o se graduan de un pregrado y están cursando otro pregrado del cual no se han graduado)',
  PRIMARY KEY (`Id_historia_UNAL`),
  CONSTRAINT `fk_Historia_academca_UNAL_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Historia_academca_UNAL_Id_programa_educativo_UNAL`
    FOREIGN KEY (`Id_programa_educativo_UNAL`)
    REFERENCES `proyecto`.`Programa_educativo_UNAL` (`Id_programa_educativo_UNAL`)
);


-- -----------------------------------------------------
-- Table `proyecto`.`Empresa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Empresa` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Empresa` (
  `Nit_empresa` BIGINT(11) NOT NULL,
  `Password_empresa` VARCHAR(100) NOT NULL,
  `Nom_Empresa` VARCHAR(70) NOT NULL,
  `Actividad_economica_principal` VARCHAR(60) NOT NULL DEFAULT "",
  `Nombre_gerente` VARCHAR(70) NOT NULL DEFAULT "",
  `Pais_empresa` VARCHAR(60) NOT NULL COMMENT 'Lugar donde esta ubicada fisicamente la empresa ',
  `Ciudad_empresa` VARCHAR(60) NOT NULL DEFAULT "",
  `Direccion_empresa` VARCHAR(60) NOT NULL DEFAULT "",
  `Descripcion` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Nit_Empresa`));

-- -----------------------------------------------------
-- Table `proyecto`.`Trabajo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Trabajo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Trabajo` (
  `Id_trabajo` INT AUTO_INCREMENT,
  `Id_egresado` BIGINT(10) NOT NULL,
  `Nit_empresa` BIGINT(11) NOT NULL,
  `Cargo_trabajo` VARCHAR(70) NOT NULL,
  `Jefe_trabajo` VARCHAR(70) NOT NULL,
  `Fecha_ingreso` DATE NOT NULL,
  `Fecha_salida` DATE,
  `Descripcion_trabajo` VARCHAR(500) NULL,
  `Tipo_trabajo` ENUM("Precencial","Remoto") NOT NULL ,
  PRIMARY KEY (`Id_Trabajo`),
  CONSTRAINT `fk_Trabajo_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Trabajo_I_empresa`
    FOREIGN KEY (`Nit_empresa`)
    REFERENCES `proyecto`.`Empresa` (`Nit_empresa`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Convocatoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Convocatoria` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Convocatoria` (
  `Id_convocatoria` INT AUTO_INCREMENT,
  `Fecha_inicio_convoc` DATE NOT NULL,
  `Fecha_finalizacion_convoc` DATE NOT NULL,
  `Vacantes_convoc` INT NOT NULL COMMENT 'cantidad de vacantes disponibles ',
  `Cargo_convoc` VARCHAR(70) NOT NULL,
  `Profesion` VARCHAR(50) NOT NULL DEFAULT "",
  `Descripcion_convoc` VARCHAR(500) NOT NULL,
  `Sector_laboral` VARCHAR(60) NOT NULL DEFAULT "",
  `Tipo_contrato` VARCHAR(45) NOT NULL,
  `Rango_salarial_min` INT NOT NULL,
  `Rango_salarial_max` INT NOT NULL,
  `Ciudad` VARCHAR(60) NOT NULL DEFAULT "",
  `Region` VARCHAR(60) NOT NULL DEFAULT "",
  `Pais` VARCHAR(60) NOT NULL DEFAULT "",
  `Experiencia_años` TINYINT NOT NULL DEFAULT 0,
  `Experiencia_meses` TINYINT NOT NULL DEFAULT 0,
  `Nivel_educativo` VARCHAR(20) NOT NULL DEFAULT "Pregrado",
  `Requirimientos_especificos` VARCHAR(200) NOT NULL DEFAULT "",
  `Nit_empresa` BIGINT(11) NOT NULL,
  PRIMARY KEY (`Id_convocatoria`),
  CONSTRAINT `fk_Convocatoria_Id_empresa`
    FOREIGN KEY (`Nit_empresa`)
    REFERENCES `proyecto`.`Empresa` (`Nit_empresa`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Idioma`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Idioma` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Idioma` (
  `Id_idioma` INT AUTO_INCREMENT,
  `Nombre_idioma` VARCHAR(50) NOT NULL,
  PRIMARY KEY(`Id_idioma`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Requerimiento_idioma`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Requerimiento_idioma` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Requerimiento_idioma` (
  `Id_idioma` INT NOT NULL,
  `Id_convocatoria` INT NOT NULL,
  PRIMARY KEY (`Id_idioma`, `Id_convocatoria`),
  CONSTRAINT `fk_Requerimiento_idioma_Id_idioma`
    FOREIGN KEY (`Id_idioma`)
    REFERENCES `proyecto`.`Idioma` (`Id_idioma`),
  CONSTRAINT `fk_Requerimiento_idioma_Id_convocatoria`
    FOREIGN KEY (`Id_convocatoria`)
    REFERENCES `proyecto`.`Convocatoria` (`Id_convocatoria`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Postulado_convocatoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Postulado_convocatoria` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Postulado_convocatoria` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_convocatoria` INT NOT NULL,
  `Fecha_posutulación` DATE NOT NULL COMMENT 'Representa la fecha en la que el estudiante hace su postulación a la convocatoria ',
  PRIMARY KEY (`Id_egresado`, `Id_convocatoria`),
  CONSTRAINT `fk_Postulado_convocatoria_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Postulado_convocatoria_Id_convocatoria`
    FOREIGN KEY (`Id_convocatoria`)
    REFERENCES `proyecto`.`Convocatoria` (`Id_convocatoria`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Seleccion_convocatória`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Seleccion_convocatoria` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Seleccion_convocatoria` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_convocatoria` INT NOT NULL,
  PRIMARY KEY (`Id_egresado`, `Id_convocatoria`),
  CONSTRAINT `fk_Selección_convocatória_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Selección_convocatória_Id_convocatoria`
    FOREIGN KEY (`Id_convocatoria`)
    REFERENCES `proyecto`.`Convocatoria` (`Id_convocatoria`)
    );

-- -----------------------------------------------------
-- Table `proyecto`.`Documento_investigacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Documento_investigacion` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Documento_investigacion` (
  `Id_documento_investigacion` INT AUTO_INCREMENT,
  `Titulo` VARCHAR(100) NOT NULL,
  `Descripcion_investigacion` VARCHAR(500) NOT NULL DEFAULT "",
  `Fecha_Publicacion` DATE NOT NULL,
  PRIMARY KEY (`Id_documento_investigacion`));

-- -----------------------------------------------------
-- Table `proyecto`.`Participacion_investigacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Participacion_investigacion` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Participacion_investigacion` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_documento_investigacion` INT NOT NULL,
  PRIMARY KEY (`Id_egresado`, `Id_documento_investigacion`),
  CONSTRAINT `fk_Participacion_investigacion_Id_Egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Participacion_investigacion_Id_documento_investigacion`
    FOREIGN KEY (`Id_documento_investigacion`)
    REFERENCES `proyecto`.`Documento_investigacion` (`Id_documento_investigacion`)
    );
  
  -- -----------------------------------------------------
-- Table `proyecto`.`Dialogo_egresados_conferencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Dialogo_egresados_conferencia` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Dialogo_egresados_conferencia` (
  `Id_dialogo_egresados_conferencia` INT AUTO_INCREMENT,
  `Nombre_conferencia` VARCHAR(100) NOT NULL,
  `Descripcion_conferencia` VARCHAR(500) NOT NULL DEFAULT(""),
  `Fecha_conferencia` DATE NOT NULL,
  `Hora_inicio_conferencia` TIME NOT NULL,
  `Hora_final_conferencia` TIME NOT NULL,
  `Link_inscripcion_conferencia` VARCHAR(270) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_dialogo_egresados_conferencia`));
  
    -- -----------------------------------------------------
-- Table `proyecto`.`Dialogo_egresados_conversatorio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Dialogo_egresados_conversatorio` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Dialogo_egresados_conversatorio` (
  `Id_dialogo_egresados_conversatorio` INT AUTO_INCREMENT,
  `Nombre_conversatorio` VARCHAR(100) NOT NULL,
  `Descripcion_conversatorio` VARCHAR(500) NOT NULL DEFAULT(""),
  `Fecha_conversatorio` DATE NOT NULL,
  `Hora_inicio_conversatorio` TIME NOT NULL,
  `Hora_final_conversatorio` TIME NOT NULL,
  `Link_inscripcion_conversatorio` VARCHAR(270) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_dialogo_egresados_conversatorio`));
  
    -- -----------------------------------------------------
-- Table `proyecto`.`Dialogo_egresados_foro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Dialogo_egresados_foro` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Dialogo_egresados_foro` (
  `Id_dialogo_egresados_foro` INT AUTO_INCREMENT,
  `Nombre_foro` VARCHAR(100) NOT NULL,
  `Descripcion_foro` VARCHAR(500) NOT NULL DEFAULT(""),
  `Fecha_foro` DATE NOT NULL,
  `Hora_inicio_foro` TIME NOT NULL,
  `Hora_final_foro` TIME NOT NULL,
  `Link_inscripcion_foro` VARCHAR(270) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_dialogo_egresados_foro`));

-- -----------------------------------------------------
-- Table `proyecto`.`Participante_externo_dialogo_egresados`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Participante_externo_dialogo_egresados` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Participante_externo_dialogo_egresados` (
  `Id_participante_externo` BIGINT(10) AUTO_INCREMENT,
  `Nombre_participante_externo` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`Id_participante_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Conferencista_externo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Conferencista_externo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Conferencista_externo` (
  `Id_participante_externo` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_conferencia` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_participante_externo`, `Id_dialogo_egresados_conferencia`),
  CONSTRAINT `fk_Conferencista_externo_Id_dialogo_egresados_conferencia`
    FOREIGN KEY (`Id_dialogo_egresados_conferencia`)
    REFERENCES `proyecto`.`Dialogo_egresados_conferencia` (`Id_dialogo_egresados_conferencia`),
  CONSTRAINT `fk_Conferencista_externo_Id_participante_externo`
    FOREIGN KEY (`Id_participante_externo`)
    REFERENCES `proyecto`.`Participante_externo_dialogo_egresados` (`Id_participante_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado_conferencista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado_conferencista` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado_conferencista` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_conferencia` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_egresado`, `Id_dialogo_egresados_conferencia`),
  CONSTRAINT `fk_Egresado_conferencista_Id_dialogo_egresados_conferencia`
    FOREIGN KEY (`Id_dialogo_egresados_conferencia`)
    REFERENCES `proyecto`.`Dialogo_egresados_conferencia` (`Id_dialogo_egresados_conferencia`),
  CONSTRAINT `fk_Egresado_conferencista_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Panelista_externo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Panelista_externo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Panelista_externo` (
  `Id_participante_externo` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_conversatorio` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_participante_externo`, `Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Panelista_externo_Id_dialogo_egresados_conversatorio`
    FOREIGN KEY (`Id_dialogo_egresados_conversatorio`)
    REFERENCES `proyecto`.`Dialogo_egresados_conversatorio` (`Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Panelista_externo_Id_participante_externo`
    FOREIGN KEY (`Id_participante_externo`)
    REFERENCES `proyecto`.`Participante_externo_dialogo_egresados` (`Id_participante_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado_panelista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado_panelista` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado_panelista` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_conversatorio` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_egresado`, `Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Egresado_panelista_Id_dialogo_egresados_conversatorio`
    FOREIGN KEY (`Id_dialogo_egresados_conversatorio`)
    REFERENCES `proyecto`.`Dialogo_egresados_conversatorio` (`Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Egresado_panelista_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Moderador_externo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Moderador_externo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Moderador_externo` (
  `Id_participante_externo` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_conversatorio` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_participante_externo`, `Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Moderador_externo_Id_dialogo_egresados_conversatorio`
    FOREIGN KEY (`Id_dialogo_egresados_conversatorio`)
    REFERENCES `proyecto`.`Dialogo_egresados_conversatorio` (`Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Moderador_externo_Id_participante_externo`
    FOREIGN KEY (`Id_participante_externo`)
    REFERENCES `proyecto`.`Participante_externo_dialogo_egresados` (`Id_participante_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado_moderador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado_moderador` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado_moderador` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_conversatorio` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_egresado`, `Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Egresado_moderador_Id_dialogo_egresados_conversatorio`
    FOREIGN KEY (`Id_dialogo_egresados_conversatorio`)
    REFERENCES `proyecto`.`Dialogo_egresados_conversatorio` (`Id_dialogo_egresados_conversatorio`),
  CONSTRAINT `fk_Egresado_moderador_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Ponente_externo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Ponente_externo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Ponente_externo` (
  `Id_participante_externo` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_foro` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_participante_externo`, `Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Ponente_externo_Id_dialogo_egresados_foro`
    FOREIGN KEY (`Id_dialogo_egresados_foro`)
    REFERENCES `proyecto`.`Dialogo_egresados_foro` (`Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Ponente_externo_Id_participante_externo`
    FOREIGN KEY (`Id_participante_externo`)
    REFERENCES `proyecto`.`Participante_externo_dialogo_egresados` (`Id_participante_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado_ponente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado_ponente` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado_ponente` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_foro` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_egresado`, `Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Egresado_ponente_Id_dialogo_egresados_foro`
    FOREIGN KEY (`Id_dialogo_egresados_foro`)
    REFERENCES `proyecto`.`Dialogo_egresados_foro` (`Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Egresado_ponente_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Coordinador_externo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Coordinador_externo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Coordinador_externo` (
  `Id_participante_externo` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_foro` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_participante_externo`, `Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Coordinador_externo_Id_dialogo_egresados_foro`
    FOREIGN KEY (`Id_dialogo_egresados_foro`)
    REFERENCES `proyecto`.`Dialogo_egresados_foro` (`Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Coordinador_externo_Id_participante_externo`
    FOREIGN KEY (`Id_participante_externo`)
    REFERENCES `proyecto`.`Participante_externo_dialogo_egresados` (`Id_participante_externo`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado_coordinador_dialogo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado_coordinador_dialogo` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado_coordinador_dialogo` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_dialogo_egresados_foro` INT NOT NULL,
  `Descripcion_perfil` VARCHAR(250) NOT NULL DEFAULT "",
  PRIMARY KEY (`Id_egresado`, `Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Egresado_coordinador_dialogo_Id_dialogo_egresados_foro`
    FOREIGN KEY (`Id_dialogo_egresados_foro`)
    REFERENCES `proyecto`.`Dialogo_egresados_foro` (`Id_dialogo_egresados_foro`),
  CONSTRAINT `fk_Egresado_coordinador_dialogo_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Catedra_con_egresados`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Catedra_con_egresados` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Catedra_con_egresados` (
  `Id_catedra` INT AUTO_INCREMENT,
  `Nombre_catedra` VARCHAR(100) NOT NULL,
  `Nombre_docente_coordinador` VARCHAR(70) NOT NULL,
  `Descripcion_catedra` VARCHAR(500) NOT NULL DEFAULT(""),
  `Modalidad` ENUM("Presencial","Virtual") NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  `Fecha_final` DATE NOT NULL,
  `Hora_inicio` TIME NOT NULL,
  `Hora_final` TIME NOT NULL,
  `Id_facultad_UNAL` INT NOT NULL,
  PRIMARY KEY (`Id_catedra`),
  CONSTRAINT `fk_Catedra_con_egresados_Id_facultad_UNAL`
  FOREIGN KEY (Id_facultad_UNAL) REFERENCES 
  `proyecto`.`Facultad_UNAL` (Id_facultad_UNAL)
);

-- -----------------------------------------------------
-- Table `proyecto`.`Egresado_coordinador_catedra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto`.`Egresado_coordinador_catedra` ;

CREATE TABLE IF NOT EXISTS `proyecto`.`Egresado_coordinador_catedra` (
  `Id_egresado` BIGINT(10) NOT NULL,
  `Id_catedra` INT NOT NULL,
  PRIMARY KEY (`Id_egresado`, `Id_catedra`),
  CONSTRAINT `fk_Egresado_coordinador_catedra_Id_egresado`
    FOREIGN KEY (`Id_egresado`)
    REFERENCES `proyecto`.`Egresado` (`Id_egresado`),
  CONSTRAINT `fk_Egresado_coordinador_catedra_Id_catedra`
    FOREIGN KEY (`Id_catedra`)
    REFERENCES `proyecto`.`Catedra_con_egresados` (`Id_catedra`)
);
