-- consultas
-- 1 Mostrar la cantidad de egresados que trabajaron para empresas de diversos países
SELECT Pais_empresa, COUNT(DISTINCT Id_egresado) 
FROM Empresa JOIN Trabajo USING(Nit_empresa) GROUP BY Pais_empresa ORDER BY Pais_empresa ;
-- 2 Mostrar los 5 idiomas mas requeridos en las convocatorias
SELECT Id_idioma, Nombre_idioma FROM Idioma JOIN Requerimiento_idioma USING (Id_idioma) GROUP BY Id_idioma ORDER BY COUNT(*) DESC LIMIT 5;
-- 3 Cantidad de egresados por carrera ofertada por la universidad
SELECT Id_programa_educativo_UNAL,Nom_programa_UNAL, COUNT(Id_egresado) 
FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL USING (Id_programa_educativo_UNAL) GROUP BY Id_programa_educativo_UNAL ORDER BY Nom_programa_UNAL;
-- 4 Cantidad de egresados de la universidad que han conseguido trabajo por medio de las convocatorias
SELECT Count(DISTINCT Id_egresado) INTO cuenta_seleccionados FROM Seleccion_convocatoria;
-- 5 Promedio de notas de la universidad por programa educativo
SELECT Id_programa_educativo_UNAL,Nom_programa_UNAL, AVG(Nota_final) 
FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL USING (Id_programa_educativo_UNAL) GROUP BY Id_programa_educativo_UNAL ORDER BY Nom_programa_UNAL;
-- 6 Mostrar 5 intituciones educativas externas en las que mas han estudiado egresados de la univesidad
SELECT Id_ins_edu, Nombre_inst_edu FROM Institucion_educativa JOIN Facultad_externa USING(Id_ins_edu) JOIN Programa_educativo_externo USING(Id_facultad_externa)
JOIN Historia_academica_externa USING (Id_programa_educativo_externo) GROUP BY Id_ins_edu ORDER BY COUNT(DISTINCT Id_egresado) DESC;
-- 7 Mostrar la cantidad de documentos de investigación que participaron egresados según su facultad
SELECT Id_facultad_UNAL, Nombre_facultad_UNAL, COUNT(DISTINCT Id_documento_investigacion) 
FROM Facultad_UNAL JOIN Programa_educativo_UNAL USING (Id_facultad_UNAL) JOIN Historia_academica_UNAL USING(Id_programa_educativo_UNAL) 
JOIN Participacion_investigacion USING (Id_egresado) GROUP BY Id_facultad_UNAL ORDER BY Nombre_facultad_UNAL;
-- 8 Mirar numero de participantes
SELECT Id_documento_investigacion,Titulo, Fecha_Publicacion, COUNT(Id_egresado) AS N_participantes
FROM Documento_investigacion JOIN Participacion_investigacion USING(Id_documento_investigacion) GROUP BY Id_documento_investigacion;
-- 9 Porcentaje de los egresados que cursan un programa de posgrado con la universidad
SELECT (SELECT COUNT(DISTINCT Id_egresado) FROM Historia_academica_UNAL JOIN Programa_educativo_UNAL 
USING(Id_programa_educativo_UNAL) WHERE Tipo_programa != "Pregrado")*100/(SELECT COUNT(*) FROM Egresado);
-- 10 Numero de trabajos que le handado las empresas registradas a los egresados por empresa
SELECT Nit_empresa,Nom_empresa,COUNT(Id_trabajo) AS N_trabajos
FROM Trabajo JOIN Empresa USING(Nit_empresa)GROUP BY Nit_empresa;
