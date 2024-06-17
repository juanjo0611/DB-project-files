-- Proyecto vistas
CREATE VIEW egresados_trabajar_paises (Pais,N_egresados) AS SELECT Pais_empresa, COUNT(DISTINCT Id_egresado) 
FROM Empresa JOIN Trabajo USING(Nit_empresa) GROUP BY Pais_empresa ORDER BY Pais_empresa ;

CREATE VIEW programa_educativo_informacion (Id_programa_educativo,Programa_educativo,N_egresados, Promedio_nota) AS SELECT Id_programa_educativo_UNAL,Nom_programa_UNAL, COUNT(Id_egresado),AVG(Nota_final) 
FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL USING (Id_programa_educativo_UNAL) GROUP BY Id_programa_educativo_UNAL ORDER BY Nom_programa_UNAL;

CREATE VIEW documentos_por_facultad (Id_facultad,Facultad, N_documentos) AS SELECT Id_facultad_UNAL, Nombre_facultad_UNAL, COUNT(DISTINCT Id_documento_investigacion) 
FROM Facultad_UNAL JOIN Programa_educativo_UNAL USING (Id_facultad_UNAL) JOIN Historia_academica_UNAL USING(Id_programa_educativo_UNAL) 
JOIN Participacion_investigacion USING (Id_egresado) GROUP BY Id_facultad_UNAL ORDER BY Nombre_facultad_UNAL;
