-- Proyecto vistas
CREATE VIEW egresados_trabajar_paises (Pais,N_egresados) AS SELECT Pais_empresa, COUNT(DISTINCT Id_egresado) 
FROM Empresa JOIN Trabajo USING(Nit_empresa) GROUP BY Pais_empresa ORDER BY Pais_empresa ;

CREATE VIEW programa_educativo_informacion (Id_programa_educativo,Programa_educativo,N_egresados, Promedio_nota) AS SELECT Id_programa_educativo_UNAL,Nom_programa_UNAL, COUNT(Id_egresado),AVG(Nota_final) 
FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL USING (Id_programa_educativo_UNAL) GROUP BY Id_programa_educativo_UNAL ORDER BY Nom_programa_UNAL;

CREATE VIEW documentos_por_facultad (Id_facultad,Facultad, N_documentos) AS SELECT Id_facultad_UNAL, Nombre_facultad_UNAL, COUNT(DISTINCT Id_documento_investigacion) 
FROM Facultad_UNAL JOIN Programa_educativo_UNAL USING (Id_facultad_UNAL) JOIN Historia_academica_UNAL USING(Id_programa_educativo_UNAL) 
JOIN Participacion_investigacion USING (Id_egresado) GROUP BY Id_facultad_UNAL ORDER BY Nombre_facultad_UNAL;

-- Procedimientos de las vistas
DELIMITER $$
CREATE PROCEDURE llamar_egresados_trabajar_paises (IN Pais_inicial VARCHAR(60))
BEGIN
IF Pais_inicial IS NULL THEN
SELECT * FROM egresados_trabajar_paises LIMIT 10;
ELSE 
SELECT * FROM egresados_trabajar_paises WHERE Pais > Pais_inicial LIMIT 10;
END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE llamar_programa_educativo_informacion (IN Programa_educativo INT)
BEGIN
IF Programa_educativo IS NULL THEN
SELECT * FROM programa_educativo_informacion LIMIT 10;
ELSE 
SELECT * FROM programa_educativo_informacion WHERE Id_programa_educativo > Programa_educativo LIMIT 10;
END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE llamar_documentos_por_facultad (IN Documento INT)
BEGIN
IF Documento IS NULL THEN
SELECT * FROM documentos_por_facultad LIMIT 10;
ELSE 
SELECT * FROM documentos_por_facultad WHERE Id_documento > Documento LIMIT 10;
END IF;
END$$
DELIMITER ;
