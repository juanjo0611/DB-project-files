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
INSERT INTO Institucion_Educativa VALUES 
(101, 'Universidad Nacional 1');


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
INSERT INTO Postulado_Convocatoria VALUES 
(00050, 70001, '2024-08-16');

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
