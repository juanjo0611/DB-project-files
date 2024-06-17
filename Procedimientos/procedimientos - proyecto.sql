USE proyecto;
-- Procedimientos almacenados y funciones
-- Sector de egresados
DROP FUNCTION IF EXISTS  porcentaje_egresados_posgrado;

DELIMITER $$
CREATE FUNCTION porcentaje_egresados_posgrado() RETURNS DECIMAL(4,2) READS SQL DATA
BEGIN
-- da el porcentaje de los egresados que cursan algun curso de posgrado
DECLARE total_egresados INT;
DECLARE egresados_posgrado INT;
DECLARE porcentaje DECIMAL(4,2);
SELECT COUNT(*) INTO total_egresados FROM Egresado;
SELECT COUNT(DISTINCT Id_egresado) INTO egresados_posgrado FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL 
USING(Id_programa_educativo_UNAL) WHERE Tipo_programa != "Pregrado";
SET porcentaje = egresados_posgrado * 100 / total_egresados;
RETURN porcentaje;
END$$
DELIMITER ;

-- Facultades
DROP PROCEDURE IF EXISTS todas_facultades_UNAL;
 
DELIMITER $$
CREATE PROCEDURE todas_facultades_UNAL()
BEGIN
-- selecciona el id y nombre de todas las facultades registradas de la universidad
SELECT Id_facultad_UNAL, Nombre_facultad_UNAL FROM Facultad_UNAL;
END$$
DELIMITER ;


-- Informacion del egresado
DROP PROCEDURE IF EXISTS info_inicio_sesion_egresado;

DELIMITER $$
CREATE PROCEDURE info_inicio_sesion_egresado(IN P_cedula BIGINT(10))
BEGIN
-- devuelve el numero de identificacion y contraseña de un egresado especifico, se usa para el inicio de sesion
SELECT Id_egresado, Nom_egresado, Ape_egresado,Password_egresado FROM Egresado WHERE Id_egresado=P_cedula;
END$$
DELIMITER  ;

DROP PROCEDURE IF EXISTS informacion_egresado;

DELIMITER $$
CREATE PROCEDURE informacion_egresado (IN P_cedula BIGINT(10))
BEGIN
-- da la informacion mas relevante se un egresado en especifico, se usa para la pestaña 'publica' que describe detalladamente a un egresado  
SELECT Id_egresado, Tipo_documento, Nom_egresado, Ape_egresado, Fecha_nacimiento, Genero, Grupo_etnico, Correo_egresado, Pais_egresado
FROM Egresado WHERE Id_egresado=P_cedula;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS egresado_historia_academica_UNAL;

DELIMITER $$
CREATE PROCEDURE egresado_historia_academica_UNAL (IN P_cedula BIGINT(10))
BEGIN
-- da la infromacion de la historia academica de un egresado en especifico, se usa para la pestaña 'publica' que describe detalladamente a un egresado
SELECT Id_historia_UNAL,Nom_programa_UNAL,Tipo_programa, Nombre_facultad_UNAL,Nota_final,IF(Fecha_grado IS NULL,"Actualidad",Fecha_grado)
FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL USING(Id_programa_educativo_UNAL) 
JOIN FacultaD_UNAL USING (Id_facultad_UNAL) WHERE Id_egresado=P_cedula;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS egresado_historia_academica_externa;

DELIMITER $$
CREATE PROCEDURE egresado_historia_academica_externa (IN P_cedula BIGINT(10))
BEGIN
-- da el historial externo de una egresado, se usa para la pestaña 'publica' que describe detalladamente a un egresado
SELECT  Id_historia_externa,Nombre_programa_externo,Tipo_programa, Nombre_facultad_externa,Nombre_inst_edu,Nota_final,IF(Fecha_grado IS NULL,"Actualidad",Fecha_grado)
FROM Historia_academica_externa JOIN Programa_educativo_externo USING(Id_programa_educativo_externo) 
JOIN Facultad_externa USING (Id_facultad_externa) JOIN Institucion_educativa USING(Id_ins_edu) WHERE Id_egresado=cedula;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS egresado_documento_investigacion;

DELIMITER $$
CREATE PROCEDURE egresado_documento_investigacion (IN P_cedula INT) 
BEGIN
-- da los documentos de investigacion en los cuales participo un egresado, se usa para la pestaña 'publica' que describe detalladamente a un egresado
SELECT Id_documento_investigacion,Titulo, Fecha_Publicacion
FROM Documento_investigacion JOIN Participacion_investigacion USING(Id_documento_investigacion) WHERE Id_egresado = P_cedula;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS Trabajo_egresado;

DELIMITER $$
CREATE PROCEDURE Trabajo_egresado (IN P_cedula INT) 
BEGIN
-- da el historial laboral de un egresado, se usa para la pestaña 'publica' que describe detalladamente a un egresado
SELECT Id_trabajo,Cargo_trabajo, Nit_empresa,Nom_empresa,Actividad_economica_principal,IF(Fecha_salida IS NULL,"Actualidad",Fecha_salida)
FROM Trabajo JOIN Empresa USING(Nit_empresa)WHERE Id_egresado = P_cedula;
END$$
DELIMITER ;

-- Catedra
DROP PROCEDURE IF EXISTS catedras_egresados_siquientes;

DELIMITER SS
CREATE PROCEDURE catedras_egresados_siquientes (IN P_catedra INT)
BEGIN
-- devuelve de 10 en 10, segun el id inical que se le pase, la informacion mas relevante de catedras con egresados
IF P_catedra IS NULL THEN
SELECT Id_catedra, Nombre_catedra, Fecha_inicio,Fecha_final FROM Catedra_con_egresados 
WHERE Fecha_final >= CURDATE() ORDER BY Id_catedra LIMIT 10;
ELSE
SELECT Id_catedra, Nombre_catedra, Fecha_inicio,Fecha_final FROM Catedra_con_egresados 
WHERE Fecha_final >= CURDATE() AND Id_catedra > P_catedra ORDER BY Id_catedra LIMIT 10;
END IF;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS catedras_egresados_anteriores;

DELIMITER SS
CREATE PROCEDURE catedras_egresados_anteriores (IN P_catedra INT)
BEGIN
-- devuelve de 10 en 10, segun el id inical que se le pase, la informacion mas relevante de catedras con egresados
SELECT Id_catedra, Nombre_catedra, Fecha_inicio,Fecha_final FROM Catedra_con_egresados 
WHERE Fecha_final >= CURDATE() AND Id_catedra < P_catedra ORDER BY Id_catedra DESC LIMIT 10;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS info_catedra;

DELIMITER $$
CREATE PROCEDURE info_catedra (IN P_catedra INT)
BEGIN
-- devuelve toda la informacion disponible sobre una catedra, se usa para en la pestaña donde se describen las catedras detalladamente
SELECT Id_catedra,Nombre_catedra, Nombre_docente_coordinador, Descripcion_catedra, Modalidad, 
Fecha_inicio, Fecha_final, Hora_inicio, Hora_final, Nombre_facultad_UNAL FROM Catedra_con_egresados JOIN
Facultad_UNAL USING (Id_facultad_UNAL) WHERE Id_catedra=P_catedra;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS egresados_coordinar_catedra;

DELIMITER $$
CREATE PROCEDURE egresados_coordinar_catedra (IN P_catedra INT)
BEGIN
-- devuelve los datos relevantes de los egresados coordinadores de una catedra, se usa para en la pestaña donde se describen las catedras detalladamente
SELECT Id_egresado, Nom_egresado, Ape_egresado FROM Egresado_coordinador_catedra JOIN Egresado 
USING (Id_egresado) WHERE Id_catedra=P_catedra;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS inserta_egresado_catedra;

DELIMITER $$
CREATE PROCEDURE inserta_egresado_catedra (IN P_cedula BIGINT(10),IN P_catedra INT)
BEGIN
-- se usa para insertar a los egresados que participan en las catedra, es llamado por el procedimiento que inserta las catedras
DECLARE EXIT HANDLER FOR SQLEXCEPTION    
BEGIN
RESIGNAL;
END;
BEGIN
INSERT INTO Egresado_coordinador_catedra VALUES (P_cedula,P_catedra);
END;
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS min_id_catedra;

DELIMITER $$
CREATE FUNCTION min_id_catedra () RETURNS INT READS SQL DATA
BEGIN
-- obtiene el id minimo de la tabla catedra con egresados
DECLARE mini INT;
SELECT MIN(Id_catedra) INTO mini FROM Catedra_con_egresados;
IF mini IS NULL THEN
SET mini = -1;
END IF; 
RETURN mini;
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS max_id_catedra;

DELIMITER $$
CREATE FUNCTION max_id_catedra () RETURNS INT READS SQL DATA
BEGIN
-- obtien el id maximo de la tabla catedra-con_egresados
DECLARE maxi INT;
SELECT MAX(Id_catedra) INTO maxi FROM Catedra_con_egresados;
IF maxi IS NULL THEN
SET maxi = -1;
END IF; 
RETURN maxi;
END$$
DELIMITER ;


-- recordar pasaro el parametro P_egresados_coordinadores como una lista de json '[1,"aaa","aaa"]'
DROP PROCEDURE IF EXISTS insertar_catedra;

DELIMITER $$
CREATE PROCEDURE insertar_catedra(IN P_nombre_catedra varchar(100), IN P_docente varchar(70), IN P_Descripcion varchar(500), 
IN P_modalidad enum('Presencial','Virtual'), IN P_fecha_inicio date,IN P_fecha_final date,IN P_hora_inicio time,IN P_hora_final time, IN P_id_facultad_UNAL int, 
IN P_egresados_coordinadores JSON)
BEGIN
-- Procedimietno usado para insertar las catedras con egresados
DECLARE ID INT;
DECLARE egresado BIGINT(10);
DECLARE i INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION    
BEGIN
ROLLBACK;
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Iserción fallida';
END;
START TRANSACTION;
SET ID = max_id_catedra()+1;
INSERT INTO catedra_con_egresados VALUES (ID,P_nombre_catedra,P_docente,P_Descripcion,P_modalidad,P_fecha_inicio,
P_fecha_final,P_hora_inicio,P_hora_final,P_id_facultad_UNAL);
WHILE i<JSON_LENGTH(P_egresados_coordinadores) DO
SELECT JSON_UNQUOTE(JSON_EXTRACT(P_egresados_coordinadores,CONCAT('$[', i, ']'))) INTO egresado;
CALL inserta_egresado_catedra(egresado,ID);
SET i = i+1;
END WHILE;
COMMIT;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS eliminar_catedra;

DELIMITER $$
CREATE PROCEDURE eliminar_catedra(IN P_id_catedra INT)
BEGIN
-- Procedimiento usado para eliminar catedras
-- hacer el triggere para que se eliminen los egresados coordinadores de la tabla egresado_coordinador_catedra
DELETE FROM Catedra_con_egresados WHERE Id_catedra = P_id_catedra;
END$$
DELIMITER ;

-- Convocatoria
DROP FUNCTION IF EXISTS cantidad_egresados_seleccionados_convocatoria;

DELIMITER $$
CREATE FUNCTION cantidad_egresados_seleccionados_convocatoria () RETURNS INT READS SQL DATA
BEGIN
-- funcion que devuelve la cantidad de egresados que consiguieron obtener trabajos con las catedras
DECLARE cuenta_seleccionados INT;
SELECT Count(DISTINCT Id_egresado) INTO cuenta_seleccionados FROM Seleccion_convocatoria;
RETURN cuanta_seleccionados;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS buscar_convocatorias_siguientes;

DELIMITER $$
CREATE PROCEDURE buscar_convocatorias_siguientes(IN P_convocatoria INT)
-- Procedimiento que devuelve de 10 en 10 los datos mas importantes de las convocatorias vigentes
BEGIN
IF P_convocatoria IS NULL THEN
SELECT Id_convocatoria,Cargo_convoc, Vacantes_convoc - (SELECT COUNT(*) FROM Seleccion_convocatoria S_c WHERE S_c.Id_convocatoria= C.Id_convocatoria),
Tipo_contrato, Rango_salarial_min, Rango_salarial_max, Fecha_finalizacion_convoc FROM Convocatoria C 
WHERE CURDATE() <= Fecha_finalizacion_convoc AND CURDATE() >= Fecha_incio_convoc 
AND Vacantes_convoc>(SELECT COUNT(*) FROM Seleccion_convocatoria S_c WHERE S_c.Id_convocatoria= C.Id_convocatoria) ORDER BY Id_convocatoria LIMIT 10;
ELSE
SELECT Id_convocatoria,Cargo_convoc, Vacantes_convoc - (SELECT COUNT(*) FROM Seleccion_convocatoria S_c WHERE S_c.Id_convocatoria= C.Id_convocatoria),
Tipo_contrato, Rango_salarial_min, Rango_salarial_max, Fecha_finalizacion_convoc FROM Convocatoria 
WHERE CURDATE() <= Fecha_finalizacion_convoc AND CURDATE() >= Fecha_incio_convoc 
AND Vacantes_convoc>(SELECT COUNT(*) FROM Seleccion_convocatoria S_c WHERE S_c.Id_convocatoria= C.Id_convocatoria) 
AND Id_convocatoria > P_convocatoria  ORDER BY Id_convocatoria LIMIT 10;
END IF;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS buscar_convocatorias_anteriores;

DELIMITER $$
CREATE PROCEDURE buscar_convocatorias_anteriores (IN P_convocatoria INT)
-- Procedimiento que devuelve de 10 en 10 los datos mas importantes de las convocatorias vigentes
BEGIN
SELECT Id_convocatoria,Cargo_convoc, Vacantes_convoc - (SELECT COUNT(*) FROM Seleccion_convocatoria S_c WHERE S_c.Id_convocatoria= C.Id_convocatoria),
Tipo_contrato, Rango_salarial_min, Rango_salarial_max, Fecha_finalizacion_convoc FROM Convocatoria 
WHERE CURDATE() <= Fecha_finalizacion_convoc AND CURDATE() >= Fecha_incio_convoc AND Id_convocatoria < P_convocatoria 
AND Vacantes_convoc>(SELECT COUNT(*) FROM Seleccion_convocatoria S_c WHERE S_c.Id_convocatoria= C.Id_convocatoria) ORDER BY Id_convocatoria DESC LIMIT 10;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS info_convocatoria;

DELIMITER $$
CREATE PROCEDURE info_convocatoria (IN P_convocatoria INT)
BEGIN
-- devuelve toda la informacion de una convocatoria que esta en la tabla convocatoria y empresa
SELECT Id_convocatoria,Fecha_incio_convoc,Fecha_finalizacion_convoc,Vacantes_convoc,Cargo_convoc,Profesion,Descripcion_convoc,Secto_laboral,
Tipo_contrato,Rango_salarial_min,Rango_salarial_max,Ciudad,Region,Pais,Experiencia_años,Experiencia_meses,Nivel_educativo,Requirimientos_especificos,
Nit_empresa,Nom_empresa FROM Convocatoria JOiN Empresa USING (Nit_empresa) WHERE Id_convocatoria=P_convocatoria;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS idiomas_convocatoria;

DELIMITER SS
CREATE PROCEDURE idiomas_convocatoria(IN P_convocatoria INT)
BEGIN
-- devuelve los idiomas que son requerimientos de una convocatoria
SELECT Id_idioma, Nombre_idioma FROM Idioma JOIN Requerimiento_idioma USING (Id_idioma) WHERE Id_convocatoria=P_convocatoria;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS postulados_convocatoria;

DELIMITER $$
CREATE PROCEDURE postulados_convocatoria(IN P_convocatoria INT)
BEGIN
-- devuelve los postulados a una convocatoria en especifico
SELECT Id_egresado, Nom_egresado, Ape_egresado FROM Postulado_convocatoria JOIN Egresado USING(Id_egresado)
 WHERE Id_convocatoria=P_convocatoria;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS postularse;

DELIMITER $$
CREATE PROCEDURE postularse(IN P_cedula BIGINT, IN P_id_convocatoria INT)
BEGIN
-- procedimiento que se llama cuando un egresado se postula a una convocatoria
INSERT INTO Postulado_convocatoria VALUES (P_cedula,P_id_convocatoria,CURDATE());
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS egresado_postulado;

DELIMITER $$
CREATE FUNCTION egresado_postulado(P_id_egresado BIGINT,P_id_convocatoria INT) RETURNS BOOLEAN READS SQL DATA
BEGIN
-- retorna TRUE o FALSE dependiendo si un egresado esta postulado a una convocatoria
DECLARE postulado BOOLEAN;
SELECT EXISTS(SELECT 1 FROM Postulado_convocatoria WHERE Id_egresado=P_id_egresado AND Id_convocatoria=P_id_convocatoria) INTO postulado;
RETURN postulado;
END $$
DELIMITER ;

-- trigger que elimine el registro de la tabla seleccion_convocatoria si ec+xiste
DROP PROCEDURE IF EXISTS eliminar_postulante;

DELIMITER $$
CREATE PROCEDURE eliminar_postulante (IN P_cedula BIGINT, IN P_id_convocatoria INT)
BEGIN
-- eliminar una postulacion
DELETE FROM Postulado_convocatoria WHERE Id_egresado=P_cedula AND Id_convocatoria=P_id_convocatoria;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS eliminar_seleccion_convocatoria;

DELIMITER $$
CREATE PROCEDURE eliminar_seleccion_convocatoria(IN P_cedula BIGINT, IN P_id_convocatoria INT)
BEGIN
-- eliminar una seleccion
DELETE FROM Seleccion_convocatoria WHERE Id_egresado=P_cedula AND Id_convocatoria=P_id_convocatoria;
END$$
DELIMITER ;

-- trigger que verifique las vacantes disponibles
DROP PROCEDURE IF EXISTS selecionar_postulante;

DELIMITER $$
CREATE PROCEDURE selecionar_postulante(IN P_cedula BIGINT, IN P_id_convocatoria INT)
BEGIN
-- procedimiento que se llama cuando una empresa seleciona a un egresado postulado 
INSERT INTO Seleccion_convocatoria VALUES (P_cedula,P_id_convocatoria);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS egresado_seleccionado;

DELIMITER $$
CREATE FUNCTION egresado_seleccionado(P_id_egresado BIGINT,P_id_convocatoria INT) RETURNS BOOLEAN READS SQL DATA
BEGIN
-- retorna TRUE o FALSE dependiendo si un egresado esta seleccionado para una convocatoria
DECLARE seleccionado BOOLEAN;
SELECT EXISTS(SELECT 1 FROM Seleccion_convocatoria WHERE Id_egresado=P_id_egresado AND Id_convocatoria=P_id_convocatoria) INTO seleccionado;
RETURN seleccionado;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS min_id_convocatoria;

DELIMITER $$
CREATE FUNCTION min_id_convocatoria () RETURNS INT READS SQL DATA
BEGIN
-- obtiene el minimo id de la tabla convocatoria
DECLARE mini INT;
SELECT MIN(Id_convocatoria) INTO mini FROM Convocatoria;
IF mini IS NULL THEN
SET mini = -1;
END IF;
RETURN mini; 
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS max_id_convocatoria;

DELIMITER $$
CREATE FUNCTION max_id_convocatoria () RETURNS INT READS SQL DATA
BEGIN
-- obtiene el maximo id de la tabal convocatoria
DECLARE maxi INT;
SELECT MAX(Id_convocatoria) INTO maxi FROM Convocatoria;
IF maxi IS NULL THEN
SET maxi = -1;
END IF; 
RETURN maxi;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS inserta_requerimiento_idioma;

DELIMITER $$
CREATE PROCEDURE inserta_requerimiento_idioma (IN P_id_idioma INT,IN P_convocatoria INT)
BEGIN
-- se usa para insertar los requisitos de idioma de las convocatorias, es llamado por el procedimiento que inserta las convocatorias
DECLARE EXIT HANDLER FOR SQLEXCEPTION    
BEGIN
RESIGNAL;
END;
BEGIN
INSERT INTO Requerimietno_idioma VALUES (P_id_idioma,P_convocatoria);
END;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS insertar_convocatoria;

DELIMITER $$
--  se tiene que pasar el id de la empresa que lo esta creando
-- el atributo idiomas es una lista JSON '[1,"aaa","aaa"]'
CREATE PROCEDURE insertar_convocatoria(IN P_fecha_incio_convoc date, IN P_fecha_finalizacion_convoc date,IN P_vacantes_convoc int,IN P_cargo_convoc varchar(70), 
IN P_profesion varchar(50),In P_descripcion_convoc varchar(500),IN P_sector_laboral varchar(60),IN P_tipo_contrato varchar(45),IN P_rango_salarial_min int, 
IN P_rango_salarial_max int,IN P_ciudad varchar(60),IN P_region varchar(60),IN P_pais varchar(60),IN P_experiencia_años tinyint,IN P_experiencia_meses tinyint,
IN P_nivel_educativo varchar(20),IN P_requirimientos_especificos varchar(200),IN P_nit_empresa bigint, IN idiomas JSON)
BEGIN
-- Procedimietno usado para insertar las convocatorias
DECLARE ID INT;
DECLARE idioma INT;
DECLARE i INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION    
BEGIN
ROLLBACK;
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Iserción fallida';
END;
START TRANSACTION;
SET ID = max_id_convocatoria()+1;
INSERT INTO Convocatoria VALUES (ID,P_fecha_incio_convoc,P_fecha_finalizacion_convoc,P_vacantes_convoc,P_cargo_convoc,P_profesion,P_descripcion_convoc,P_sector_laboral,
P_tipo_contrato,P_rango_salarial_min,P_rango_salarial_max,P_ciudad,P_region,P_pais,P_experiencia_años,P_experiencia_meses,P_nivel_educativo,P_requirimientos_especificos,
P_nit_empresa);
WHILE i<JSON_LENGTH(idiomas) DO
SELECT JSON_UNQUOTE(JSON_EXTRACT(idiomas,CONCAT('$[', i, ']'))) INTO idioma;
CALL inserta_requerimietno_idioma(idioma,ID);
SET i = i+1;
END WHILE;
COMMIT;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS eliminar_convocatoria;

DELIMITER $$
CREATE PROCEDURE eliminar_convocatoria(IN P_id_convocatoria INT)
BEGIN
-- Procedimiento usado para eliminar convocatoria
-- hacer el triggere para que se eliminen los requerimientos de idioma de la tabla requerimientos de idioma, postulados y seleccionados
DELETE FROM Convocatoria WHERE Id_convocatoria = P_id_convocatoria;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS actualizar_convocatoria;

DELIMITER $$
CREATE PROCEDURE actualizar_convocatoria (IN P_id_convocatoria INT,IN P_fecha_incio_convoc date, IN P_fecha_finalizacion_convoc date,IN P_vacantes_convoc int,IN P_cargo_convoc varchar(70), 
IN P_profesion varchar(50),In P_descripcion_convoc varchar(500),IN P_sector_laboral varchar(60),IN P_tipo_contrato varchar(45),IN P_rango_salarial_min int, 
IN P_rango_salarial_max int,IN P_ciudad varchar(60),IN P_region varchar(60),IN P_pais varchar(60),IN P_experiencia_años tinyint,IN P_experiencia_meses tinyint,
IN P_nivel_educativo varchar(20),IN P_requirimientos_especificos varchar(200), IN idiomas JSON)
BEGIN
-- Procedimiento para actualizar convocatorias
DECLARE idioma INT;
DECLARE i INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION    
BEGIN
ROLLBACK;
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Actualización fallida';
END;
START TRANSACTION;
UPDATE Convocatoria SET Fecha_incio_convoc=P_fecha_incio_convoc,Fecha_finalizacion_convoc=P_fecha_finalizacion_convoc,Vacantes_convoc=P_vacantes_convoc,Cargo_convoc=P_cargo_convoc,
Profesion=P_profesion,Descripcion_convoc=P_descripcion_convoc ,Sector_laboral=P_sector_laboral,Tipo_contrato=P_tipo_contrato,Rango_salarial_min=P_rango_salarial_min,
Rango_salarial_max=P_rango_salarial_max,Ciudad=P_ciudad,Region=P_region,Pais=P_pais, Experiencia_años=P_experiencia_años, Experiencia_meses=P_experiencia_meses,Nivel_educativo=P_nivel_educativo,
Requirimientos_especificos=P_requirimientos_especificos WHERE Id_convocatoria=P_id_convocatoria;
DELETE FROM Requerimiento_idioma WHERE Id_convocatoria=P_id_convocatoria;
WHILE i<JSON_LENGTH(idiomas) DO
SELECT JSON_UNQUOTE(JSON_EXTRACT(idiomas,CONCAT('$[', i, ']'))) INTO idioma;
CALL inserta_requerimietno_idioma(idioma,P_id_convocatoria);
SET i = i+1;
END WHILE;
COMMIT;
END$$
DELIMITER ;

-- Idioma
DROP PROCEDURE IF EXISTS todos_idiomas;

DELIMITER $$
CREATE PROCEDURE todos_idiomas ()
BEGIN
-- devuelve todos los idiomas, sus Id y nombres
SELECT * FROM Idioma;
END$$
DELIMITER ;

-- Empresa
DROP PROCEDURE IF EXISTS info_empresa;

DELIMITER $$
CREATE PROCEDURE info_empresa(IN P_nit_empresa BIGINT)
BEGIN
-- da toda la informacion publica de una empresa
SELECT Nit_empresa,Nom_Empresa,Actividad_economica_principal,Nombre_gerente,Pais_empresa,Ciudad_empresa,Direccion_empresa,Descripcion 
FROM Empresa WHERE Nit_empresa=P_nit_empresa;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS info_inicion_sesion_empresa;

DELIMITER $$
CREATE PROCEDURE info_inicion_sesion_empresa (IN P_nit_empresa BIGINT)
-- informacion de inisio de sesion de egresados
BEGIN
SELECT Nit_empresa, Nom_Empresa,Password_empresa FROM Empresa WHERE Nit_empresa=P_nit_empresa;
END$$
DELIMITER ;

