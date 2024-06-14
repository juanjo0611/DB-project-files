use proyecto;

-- Tabla Egresados:
-- Sirve:
Select * from egresado;

-- No Sirve:
insert into egresado Values 
(10001, 'CC', 'Juan Carlos', 'Moreno Moreno', '20-02-2000', 'Masculino', 'No aplica', 'juancamoreno@unal.edu.co', 3205468782, 'Bogota', 'Colombia');
delete from egresado;

-- Tabla Institucion_Educativa:
-- Sirve:
Select * from Institucion_Educativa;
-- No Sirve:
INSERT INTO Institucion_Educativa VALUES (101, 'Universidad Nacional 1');

-- Tabla Empresa:
Select * from empresa;
UPDATE Empresa SET Actividad_Economica_principal = 'Bebidas Gaseosas' Where Actividad_Economica_principal = 'Bebidas';

-- Tabla Trabajo:
SELECT * FROM Trabajo;
UPDATE Trabajo SET Jefe_Trabajo= 'Alba Gómez' WHERE Id_Trabajo = 60001;

-- Tabla Convocatória:
SELECT * FROM convocatoria;
UPDATE convocatoria SET Vacantes_convoc = Vacantes_convoc + 2 WHERE id_Convocatoria = 70001 AND 70002; 

-- Tabla Postulado_Convocatoria:
SELECT * FROM Postulado_Convocatoria;
-- No Sirve:
INSERT INTO Postulado_Convocatoria VALUES 
(00051, 70001, '2024-08-16');

-- Tabla Selección_convocatória:
SELECT * FROM Selección_convocatória;
-- No Sirve:
INSERT INTO Selección_convocatória VALUES 
(00002, 70001);


-- Tabla Documento_Investigacion:
SELECT * FROM Documento_Investigacion;
-- No Sirve: 
INSERT INTO Documento_Investigacion VALUES 
(10028, 'Impacto de la COVID-19', 'Ruso', 'Informe Económico Mundial', 'Este documento analiza el impacto económico de la pandemia de COVID-19 a nivel global.', '2024-03-10');

-- Tabla Historial_Laboral:
SELECT * FROM Historial_Laboral;
UPDATE Historial_Laboral SET Fecha_salida = '2025-05-10' Where Fecha_contratacion= '2025-02-18' AND Id_Egresado = 00001;

-- Tabla Catedra_con_egresados:
Select * from Catedra_con_egresados;
-- No sirve:
UPDATE Catedra_con_egresados SET Modalidad = 'Virtual' WHERE Id_Facultad = 1013;