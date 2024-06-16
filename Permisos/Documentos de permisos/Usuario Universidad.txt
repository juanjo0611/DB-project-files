use proyecto;

-- Tabla Egresados:
-- Sirve:
Select * from egresado;
insert into egresado Values 
(10001, 'CC', 'Juan Carlos', 'Moreno Moreno', '20-02-2000', 'Masculino', 'No aplica', 'juancamoreno@unal.edu.co', 3205468782, 'Bogota', 'Colombia');
delete from egresado Where Id_egresado = 10001;

-- Tabla Institucion_Educativa:
-- Sirve:
Select * from Institucion_Educativa;
-- No Sirve:
INSERT INTO Institucion_Educativa VALUES 
(101, 'Universidad Nacional 1');

-- Tabla Facultad_Externa:
-- Sirve:
SELECT * FROM Facultad_Externa;
INSERT INTO Facultad_Externa VALUES (1031, 'Quimica', 'Bogota', 'Manuel Ortiz', 102);
-- No Sirve:
Delete FROM Facultad_Externa Where Id_facultad_externa = 1031; 


-- Tabla Programa Educativo Externo:
-- Sirve:
SELECT * FROM Programa_Educativo_Externo;
INSERT INTO Programa_Educativo_Externo VALUES 
(2030, 'Licenciatura en Química', 1031, 'Licenciatura', 'Presencial');

-- Tabla Historia_academca_Externa:
SELECT * FROM Historia_academca_Externa;
UPDATE Historia_academca_Externa SET Nota_Promedio = Nota_Promedio * 0.8 WHERE Id_egresado = 1;   

-- Tabla Facultad_UNAL:
SELECT * FROM Facultad_UNAL;
-- No sirve:
DELETE FROM Facultad_UNAL WHERE Nombre= 'Artes';

-- Tabla Programa Educativo UNAL:
SELECT * FROM Programa_Educativo_UNAL;
-- No Sirve:
DELETE FROM Programa_Educativo_UNAL WHERE Nom_Programa = 'Matemáticas';

-- Tabla Historia_academca_UNAL:
SELECT * FROM Historia_academca_UNAL;
UPDATE Historia_academca_UNAL SET Nota_Promedio = Nota_Promedio * 1.1 WHERE Id_egresado = 32; 
-- No sirve 
DELETE FROM Historia_academca_UNAL WHERE Nota_Promedio = 4.62;


-- Tabla Empresa:
Select * from empresa;
-- No sirve 
INSERT INTO Empresa VALUES 
(50020, 'Postobón S.A.', 'Bebidas', 'Juan Pérez', 'Colombia', 'Bogotá', 'Carrera 45 # 26-54', 'Empresa líder en la producción de bebidas.');

-- tabla Trabajo:
Select * from Trabajo;
-- No sirve:
INSERT INTO Trabajo VALUES 
(60020, 00001, 50001, 'Gerente de Marketing', 'Ana Gómez', '2020-01-15', '2022-05-30', 'Responsable de las estrategias de marketing de la empresa.', 'Precencial');

-- Tabla Convocatória:
SELECT * FROM convocatoria;
-- No sirve: 
INSERT INTO Convocatoria VALUES 
(70009, '2024-06-15', '2024-07-15', 5, 'Analista de Marketing Digital', 'Marketing', 'Se busca un profesional para desarrollar estrategias de marketing digital.', 'Marketing', 'Contrato indefinido', 2000000, 4000000, 'Bogotá', 'Cundinamarca', 'Colombia', '1+', 'Pregrado', 'Manejo de redes sociales, Google Analytics', 'Inglés', 50001);

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
INSERT INTO Documento_Investigacion VALUES 
(10028, 'Impacto de la COVID-19', 'Ruso', 'Informe Económico Mundial', 'Este documento analiza el impacto económico de la pandemia de COVID-19 a nivel global.', '2024-03-10');

-- Tabla Historial_Laboral:
SELECT * FROM Historial_Laboral;
-- No sirve:
UPDATE Historial_Laboral SET Fecha_salida = '2025-05-10' Where Fecha_contratacion= '2025-02-18' AND Id_Egresado = 00001;

-- tabla Dialogo_con_egresados:
SELECT * FROM Dialogo_con_egresados;
INSERT INTO Dialogo_con_egresados VALUES 
(400016, 'Encuentro de Física', '2024-08-10', 50, 35);

-- Tabla Conferensista_dialogo_egresados:
SELECT * FROM Conferensista_dialogo_egresados;
UPDATE Conferensista_dialogo_egresados SET Nombre= 'Gabriela' WHERE cedula_conferensista = 60001;

-- Tabla Catedra_con_egresados:
Select * from Catedra_con_egresados;
UPDATE Catedra_con_egresados SET Modalidad = 'Virtual' WHERE Id_Facultad = 1013;
