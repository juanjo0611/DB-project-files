DELETE FROM `proyecto`.`Egresado_coordinador_dialogo`;
DELETE FROM `proyecto`.`Egresado_ponente`;
DELETE FROM `proyecto`.`Egresado_moderador`;
DELETE FROM `proyecto`.`Moderador_externo`;
DELETE FROM `proyecto`.`Egresado_panelista`;
DELETE FROM `proyecto`.`Panelista_externo`;
DELETE FROM `proyecto`.`Egresado_conferencista`;
DELETE FROM `proyecto`.`Conferencista_externo`;
DELETE FROM `proyecto`.`Participante_externo_dialogo_egresados`;
DELETE FROM `proyecto`.`Dialogo_egresados_foro`;
DELETE FROM `proyecto`.`Dialogo_egresados_conversatorio`;
DELETE FROM `proyecto`.`Dialogo_egresados_conferencia`;
DELETE FROM `proyecto`.`Egresado_coordinador_catedra`;
DELETE FROM `proyecto`.`Catedra_con_egresados`;
DELETE FROM `proyecto`.`Participacion_Investigacion`;
DELETE FROM `proyecto`.`Documento_Investigacion`;
DELETE FROM `proyecto`.`Seleccion_convocatoria`;
DELETE FROM `proyecto`.`Postulado_Convocatoria`;
DELETE FROM `proyecto`.`Requerimiento_idioma`;
DELETE FROM `proyecto`.`Idioma`;
DELETE FROM `proyecto`.`Convocatoria`;
DELETE FROM `proyecto`.`Trabajo`;
DELETE FROM `proyecto`.`Empresa`;
DELETE FROM `proyecto`.`Historia_academica_UNAL`;
DELETE FROM `proyecto`.`Programa_Educativo_UNAL`;
DELETE FROM `proyecto`.`Facultad_UNAL`;
DELETE FROM `proyecto`.`Historia_academica_Externa`;
DELETE FROM `proyecto`.`Programa_Educativo_Externo`;
DELETE FROM `proyecto`.`Facultad_Externa`;
DELETE FROM `proyecto`.`Institucion_Educativa`;
DELETE FROM `proyecto`.`Egresado`;

-- -----------------------------------------------------
-- INSERCIÓN TABLA EGRESADOS:
-- -----------------------------------------------------
INSERT INTO Egresado
(Id_egresado, Password_egresado, Tipo_documento, Nom_egresado, Ape_egresado, Fecha_nacimiento, Genero, Grupo_etnico, Correo_egresado, Celular_egresado, Direccion_contacto, Pais_egresado)
VALUES
(00001, '123', 'CC', 'Juan Carlos', 'Moreno Moreno', '2000-02-20', 'Masculino', 'No aplica', 'juancamoreno@unal.edu.co', 3205468782, 'Bogota', 'Colombia'),
(00002, 'myPassword', 'CC', 'Maria Luisa', 'Lopez Correa', '2002-07-25', 'Femenino', 'Wayuu', 'Marlu@unal.edu.co', 3127894436, 'Medellin', 'Colombia' ),
(00003, 'Contraseña', 'CC', 'Ivan', 'Lopez Hernandez', '1997-01-25', 'Masculino', 'Afro', 'Ivan222@unal.edu.co', 3116789436, 'Cali', 'Colombia' ),
(00004, '0000', 'CC', 'Carlos Hernan', 'Marin Correa', '2001-11-25', 'Masculino', 'No aplica', 'carlito333@unal.edu.co', 3108974536, 'Bogota', 'Colombia' ),
(00005, 'qwerty', 'CC', 'Andrea Gissel', 'Galindo Galindo', '1995-12-02', 'Femenino', 'Afro', 'AndreaGa@unal.edu.co', 3008975410, 'Barranquilla', 'Colombia' ),
(00006, '0', 'CC', 'Luisa Fernanda', 'Gonzalez Perez', '1998-03-15', 'Femenino', 'No aplica', 'luisafernanda@unal.edu.co', 3012345678, 'Cali', 'Colombia'),
(00007, '0', 'CC', 'Pedro Pablo', 'Gomez Ramirez', '1990-05-10', 'Masculino', 'No aplica', 'pedropablo@unal.edu.co', 3156781234, 'Medellin', 'Colombia'),
(00008, '0', 'CC', 'Ana Maria', 'Diaz Rojas', '1993-09-12', 'Femenino', 'Afro', 'anamaria@unal.edu.co', 3209876543, 'Barranquilla', 'Colombia'),
(00009, '0', 'CC', 'Javier', 'Gutierrez Lopez', '1996-11-28', 'Masculino', 'Wayuu', 'javier@unal.edu.co', 3112345678, 'Cartagena', 'Colombia'),
(00010, '0', 'CC', 'Laura Sofia', 'Martinez Vargas', '1989-04-20', 'Femenino', 'No aplica', 'laurasofiama@unal.edu.co', 3045678901, 'Bogota', 'Colombia'),
(00011, '0', 'CC', 'Diego Alejandro', 'Rojas Cardenas', '1992-07-18', 'Masculino', 'Zenu', 'diegoalejandroro@unal.edu.co', 3134567890, 'Barranquilla', 'Colombia'),
(00012, '0', 'CC', 'Carolina', 'Sanchez Guerrero', '1985-02-05', 'Femenino', 'Wayuu', 'carolina@unal.edu.co', 3012345678, 'Cali', 'Colombia'),
(00013, '0', 'CC', 'Santiago', 'Mendez Diaz', '1987-10-03', 'Masculino', 'Afro', 'santiago@unal.edu.co', 3187654321, 'Medellin', 'Colombia'),
(00014, '0', 'CC', 'Valentina', 'Perez Alvarez', '1978-08-21', 'Femenino', 'No aplica', 'valentinape@unal.edu.co', 3101234567, 'Bogota', 'Colombia'),
(00015, '0', 'CC', 'Andres Felipe', 'Garcia Ospina', '1984-06-17', 'Masculino', 'No aplica', 'andresfelipega@unal.edu.co', 3009876543, 'Barranquilla', 'Colombia'),
(00016, '0', 'CC', 'Camila', 'Castro Marin', '1982-12-30', 'Femenino', 'Zenu', 'camila@unal.edu.co', 3176543210, 'Cartagena', 'Colombia'),
(00017, '0', 'CC', 'Gabriel', 'Lopez Arias', '1980-04-14', 'Masculino', 'No aplica', 'gabriel@unal.edu.co', 3134567890, 'Medellin', 'Colombia'),
(00018, '0', 'CC', 'Mariana', 'Rios Lopez', '1979-01-09', 'Femenino', 'Wayuu', 'marianari@unal.edu.co', 3056789012, 'Cali', 'Colombia'),
(00019, '0', 'CC', 'Daniel', 'Gutierrez Ramirez', '1976-05-23', 'Masculino', 'Afro', 'danielgu@unal.edu.co', 3123456789, 'Bogota', 'Colombia'),
(00020, '0', 'CC', 'Alejandra', 'Moreno Gonzalez', '1975-08-07', 'Femenino', 'No aplica', 'alejandramo@unal.edu.co', 3201234567, 'Barranquilla', 'Colombia'),
(00021, '0', 'CC', 'Mateo', 'Vargas Rojas', '1973-11-19', 'Masculino', 'Zenu', 'mateovarg@unal.edu.co', 3145678901, 'Cartagena', 'Colombia'),
(00022, '0', 'CC', 'Sofia', 'Diaz Martinez', '1971-07-25', 'Femenino', 'No aplica', 'sofiadi@unal.edu.co', 3012345678, 'Cali', 'Colombia'),
(00023, '0', 'CC', 'Juan', 'Gomez Hernandez', '1969-09-11', 'Masculino', 'Wayuu', 'juandavidgo@unal.edu.co', 3176543210, 'Medellin', 'Colombia'),
(00024, '0', 'CC', 'Luisa', 'Hernandez Perez', '1967-03-06', 'Femenino', 'Afro', 'luisa@unal.edu.co', 3109876543, 'Bogota', 'Colombia'),
(00025, '0', 'CC', 'Andres', 'Rojas Gutierrez', '1965-12-29', 'Masculino', 'No aplica', 'andres@unal.edu.co', 3001234567, 'Barranquilla', 'Colombia'),
(00026, '0', 'CC', 'Maria', 'Sanchez Rojas', '1964-08-18', 'Femenino', 'No aplica', 'maria@unal.edu.co', 3209876543, 'Cartagena', 'Colombia'),
(00027, '0', 'CC', 'Jose', 'Lopez Martinez', '1963-05-02', 'Masculino', 'Zenu', 'jose@unal.edu.co', 3145678901, 'Cali', 'Colombia'),
(00028, '0', 'CC', 'Laura', 'Gonzalez Ramirez', '1962-09-27', 'Femenino', 'No aplica', 'laura@unal.edu.co', 3012345678, 'Medellin', 'Colombia'),
(00029, '0', 'CC', 'Carlos', 'Diaz Gutierrez', '1961-11-09', 'Masculino', 'Wayuu', 'carlos@unal.edu.co', 3176543210, 'Bogota', 'Colombia'),
(00030, '0', 'CC', 'Fernanda', 'Martinez Hernandez', '1960-07-13', 'Femenino', 'Afro', 'fernanda@unal.edu.co', 3109876543, 'Barranquilla', 'Colombia'),
(00032, '0', 'CC', 'Ana Maria', 'Ramirez Garcia', '1994-04-05', 'Femenino', 'No aplica', 'anamariara@unal.edu.co', 3012345678, 'Cali', 'Colombia'),
(00033, '0', 'CC', 'Luis Felipe', 'Gonzalez Torres', '1991-02-10', 'Masculino', 'Afro', 'luisfelipe@unal.edu.co', 3156781234, 'Medellin', 'Colombia'),
(00034, '0', 'CC', 'Juliana Andrea', 'Lopez Gutierrez', '1988-09-12', 'Femenino', 'Wayuu', 'juliana@unal.edu.co', 3209876543, 'Barranquilla', 'Colombia'),
(00035, '0', 'CC', 'Carlos Andres', 'Perez Martinez', '1987-11-28', 'Masculino', 'No aplica', 'carlosandres@unal.edu.co', 3112345678, 'Cartagena', 'Colombia'),
(00036, '0', 'CC', 'Laura Sofia', 'Gutierrez Vargas', '1986-04-20', 'Femenino', 'Zenu', 'laurasofia@unal.edu.co', 3045678901, 'Bogota', 'Colombia'),
(00037, '0', 'CC', 'Diego Alejandro', 'Rojas Hernandez', '1983-07-18', 'Masculino', 'No aplica', 'diegoalejandro@unal.edu.co', 3134567890, 'Barranquilla', 'Colombia'),
(00038, '0', 'CC', 'Maria Jose', 'Sanchez Cardenas', '1980-02-05', 'Femenino', 'Wayuu', 'mariajose@unal.edu.co', 3012345678, 'Cali', 'Colombia'),
(00039, '0', 'CC', 'Santiago Andres', 'Mendez Diaz', '1978-10-03', 'Masculino', 'Afro', 'santiagoandres@unal.edu.co', 3187654321, 'Medellin', 'Colombia'),
(00040, '0', 'CC', 'Valentina', 'Perez Alvarez', '1977-08-21', 'Femenino', 'No aplica', 'valentina@unal.edu.co', 3101234567, 'Bogota', 'Colombia'),
(00041, '0', 'CC', 'Andres Felipe', 'Garcia Ospina', '1976-06-17', 'Masculino', 'No aplica', 'andresfelipe@unal.edu.co', 3009876543, 'Barranquilla', 'Colombia'),
(00042, '0', 'CC', 'Camila Sofia', 'Castro Marin', '1974-12-30', 'Femenino', 'Zenu', 'camilasofia@unal.edu.co', 3176543210, 'Cartagena', 'Colombia'),
(00043, '0', 'CC', 'Gabriel Antonio', 'Lopez Arias', '1973-04-14', 'Masculino', 'No aplica', 'gabrielantonio@unal.edu.co', 3134567890, 'Medellin', 'Colombia'),
(00044, '0', 'CC', 'Mariana', 'Rios Lopez', '1972-01-09', 'Femenino', 'Wayuu', 'mariana@unal.edu.co', 3056789012, 'Cali', 'Colombia'),
(00045, '0', 'CC', 'Daniel Alejandro', 'Gutierrez Ramirez', '1969-05-23', 'Masculino', 'Afro', 'daniel@unal.edu.co', 3123456789, 'Bogota', 'Colombia'),
(00046, '0', 'CC', 'Alejandra Maria', 'Moreno Gonzalez', '1968-08-07', 'Femenino', 'No aplica', 'alejandra@unal.edu.co', 3201234567, 'Barranquilla', 'Colombia'),
(00047, '0', 'CC', 'Mateo', 'Vargas Rojas', '1967-11-19', 'Masculino', 'Zenu', 'mateo@unal.edu.co', 3145678901, 'Cartagena', 'Colombia'),
(00048, '0', 'CC', 'Sofia', 'Diaz Martinez', '1966-07-25', 'Femenino', 'No aplica', 'sofia@unal.edu.co', 3012345678, 'Cali', 'Colombia'),
(00049, '0', 'CC', 'Juan David', 'Gomez Hernandez', '1965-09-11', 'Masculino', 'Wayuu', 'juandavid@unal.edu.co', 3176543210, 'Medellin', 'Colombia'),
(00050, '0', 'CC', 'Luisa Fernanda', 'Hernandez Perez', '1964-03-06', 'Femenino', 'Afro', 'luisafernandahe@unal.edu.co', 3109876543, 'Bogota', 'Colombia'),
(00051, '0', 'CC', 'Andres Felipe', 'Rojas Gutierrez', '1963-12-29', 'Masculino', 'No aplica', 'andresfero@unal.edu.co', 3001234567, 'Barranquilla', 'Colombia');

-- -----------------------------------------------------
-- INSERCIÓN TABLA INSTITUCION EDUCATIVA:
-- -----------------------------------------------------
INSERT INTO Institucion_Educativa VALUES 
(101, 'Universidad Nacional'),
(102, 'Universidad de los Andes'),
(103, 'Universidad Javeriana'),
(104, 'Universidad de la sabana'),
(105, 'Universidad Militar'),
(106, 'Escuela de Ingenieros'),
(107, 'Universidad de massachusetts');


-- -----------------------------------------------------
-- INSERCIÓN TABLA FACULTAD EXTERNA:
-- -----------------------------------------------------
INSERT INTO Facultad_Externa VALUES 
(1001, 'Quimica', 'Manuel Ortiz', 103),
(1002, 'Ingenieria', 'Andres Forero', 106), 
(1003, 'Arquitectura', 'Laura Martinez', 103),
(1004, 'Ciencias Sociales', 'Carlos Rodriguez', 102),
(1005, 'Medicina', 'Luisa Perez', 103),
(1006, 'Derecho', 'Alejandro Gomez', 104),
(1007, 'Economia', 'Maria Torres', 105),
(1008, 'Odontologia', 'Juan Ramirez', 105),
(1009, 'Psicologia', 'Ana Garcia', 102),
(1010, 'Ciencias Politicas', 'Pedro Diaz', 103),
(1011, 'Educacion', 'Sofia Lopez', 104),
(1012, 'Administracion', 'Daniel Hernandez', 105),
(1013, 'Veterinaria', 'Catalina Sanchez', 105),
(1014, 'Biologia', 'Mateo Perez', 102),
(1015, 'Comunicacion', 'Valentina Gutierrez', 103),
(1016, 'Fisioterapia', 'Diego Torres', 104),
(1017, 'Quimica', 'Laura Rojas', 102),
(1018, 'Ingenieria', 'Andres Cuellar', 106),
(1019, 'Arquitectura', 'Camila Rodriguez', 106),
(1020, 'Ciencias Sociales', 'Carlos Perez', 102),
(1021, 'Medicina', 'Luis Ramirez', 103),
(1022, 'Derecho', 'Alejandra Martinez', 104),
(1023, 'Economia', 'Mario Garcia', 105),
(1024, 'Odontologia', 'Juanita Lopez', 107),
(1025, 'Psicologia', 'Andrea Diaz', 102),
(1026, 'Ciencias Politicas', 'Pedro Rodriguez', 103),
(1027, 'Educacion', 'Sara Ramirez', 104),
(1028, 'Administracion', 'David Gutierrez', 105),
(1029, 'Veterinaria', 'Catalina Perez', 106),
(1030, 'Biologia', 'Mateo Gomez', 102);


-- -----------------------------------------------------
-- Inserciones de programas educativos externos:
-- -----------------------------------------------------
INSERT INTO Programa_Educativo_Externo VALUES 
(2001, 'Licenciatura en Química', 1001, 'Licenciatura', 'Presencial'),
(2002, 'Ingeniería Civil', 1002, 'Pregrado', 'Presencial'),
(2003, 'Arquitectura Sostenible', 1003, 'Maestría', 'Presencial'),
(2004, 'Psicología Clínica', 1004, 'Maestría', 'Presencial'),
(2005, 'Medicina Familiar', 1005, 'Especialización', 'Presencial'),
(2006, 'Derecho Internacional', 1006, 'Maestría', 'Presencial'),
(2007, 'Economía Ambiental', 1007, 'Maestría', 'Presencial'),
(2008, 'Odontología Estética', 1008, 'Especialización', 'Presencial'),
(2009, 'Licenciatura en Educación Física', 1009, 'Licenciatura', 'Presencial'),
(2010, 'Ciencias Políticas y Gobierno', 1010, 'Pregrado', 'Presencial'),
(2011, 'Administración de Empresas', 1011, 'Pregrado', 'Presencial'),
(2012, 'Veterinaria de Pequeños Animales', 1012, 'Especialización', 'Presencial'),
(2013, 'Biología Marina', 1013, 'Pregrado', 'Presencial'),
(2014, 'Comunicación Audiovisual', 1014, 'Pregrado', 'Presencial'),
(2015, 'Fisioterapia Deportiva', 1015, 'Especialización', 'Presencial'),
(2016, 'Licenciatura en Química', 1017, 'Licenciatura', 'Presencial'),
(2017, 'Ingeniería de Sistemas', 1018, 'Pregrado', 'Presencial'),
(2018, 'Arquitectura Sostenible', 1019, 'Maestría', 'Presencial'),
(2019, 'Psicología Organizacional', 1020, 'Maestría', 'Presencial'),
(2020, 'Medicina Interna', 1021, 'Especialización', 'Presencial'),
(2021, 'Derecho Penal', 1022, 'Maestría', 'Presencial'),
(2022, 'Economía del Desarrollo', 1023, 'Maestría', 'Presencial'),
(2023, 'Odontología Pediátrica', 1024, 'Especialización', 'Presencial'),
(2024, 'Licenciatura en Filosofía', 1025, 'Licenciatura', 'Presencial'),
(2025, 'Biología Molecular', 1026, 'Maestría', 'Presencial'),
(2026, 'Comunicación Corporativa', 1027, 'Maestría', 'Presencial'),
(2027, 'Fisioterapia Neurológica', 1028, 'Especialización', 'Presencial'),
(2028, 'Licenciatura en Historia', 1029, 'Licenciatura', 'Presencial'),
(2029, 'Ingeniería Industrial', 1030, 'Pregrado', 'Presencial');


-- -----------------------------------------------------
-- Inserciones en la tabla Historia_academica_Externa:
-- -----------------------------------------------------
INSERT INTO Historia_academica_Externa VALUES 
(3001, 2001, 00001, 4.5, '2018-07-15', '2022-06-30'),
(3002, 2002, 00002, 4.2, '2017-08-20', '2021-12-15'),
(3003, 2003, 00003, 4.7, '2016-09-10', '2020-11-25'),
(3004, 2004, 00004, 4.4, '2015-07-05', '2019-10-20'),
(3005, 2005, 00005, 4.6, '2014-08-12', '2018-09-28'),
(3006, 2006, 00006, 4.3, '2013-09-18', '2017-07-10'),
(3007, 2007, 00007, 4.8, '2012-07-20', '2016-12-05'),
(3008, 2008, 00008, 4.1, '2011-08-25', '2015-11-30'),
(3009, 2009, 00009, 4.9, '2010-09-30', '2014-08-15'),
(3010, 2010, 00010, 4.0, '2009-07-15', '2013-06-30'),
(3011, 2011, 00011, 4.5, '2008-08-20', '2012-12-15'),
(3012, 2012, 00012, 4.2, '2007-09-10', '2011-11-25'),
(3013, 2013, 00013, 4.7, '2006-07-05', '2010-10-20'),
(3014, 2014, 00014, 4.4, '2005-08-12', '2009-09-28'),
(3015, 2015, 00015, 4.6, '2004-09-18', '2008-07-10'),
(3016, 2016, 00016, 4.3, '2003-07-20', '2007-12-05'),
(3017, 2017, 00017, 4.8, '2002-08-25', '2006-11-30'),
(3018, 2018, 00018, 4.1, '2001-09-30', '2005-08-15'),
(3019, 2019, 00019, 4.9, '2000-07-15', '2004-06-30'),
(3020, 2020, 00020, 4.0, '1999-08-20', '2003-12-15'),
(3021, 2021, 00021, 4.5, '1998-09-10', '2002-11-25'),
(3022, 2022, 00022, 4.2, '1997-07-05', '2001-10-20'),
(3023, 2023, 00023, 4.7, '1996-08-12', '2000-09-28'),
(3024, 2024, 00024, 4.4, '1995-09-18', '1999-07-10'),
(3025, 2025, 00025, 4.6, '1994-07-20', '1998-12-05'),
(3026, 2026, 00026, 4.3, '1993-08-25', '1997-11-30'),
(3027, 2027, 00027, 4.8, '1992-09-30', '1996-08-15'),
(3028, 2028, 00028, 4.1, '1991-07-15', '1995-06-30'),
(3029, 2029, 00029, 4.9, '1990-08-20', '1994-12-15'),
(3030, 2021, 00030, 4.0, '1989-09-10', '1993-11-25');


-- -----------------------------------------------------
-- INSERCION Facultad_UNAL:
-- -----------------------------------------------------
INSERT INTO Facultad_UNAL VALUES 
(1011, 'Artes', 'Bogota', 'Manuel Ortiz'),
(1012, 'Ciencias', 'Bogota', 'Hernan Lopez'), 
(1013, 'Ciencias Agrarias', 'Bogota', 'Roger Martinez'),
(1014, 'Derecho, Ciencias Politicas', 'Bogota', 'Carlos Rodriguez'),
(1015, 'Ciencias Economicas', 'Bogota', 'Luis Perez'),
(1016, 'Ciencias Humanas', 'Bogota', 'Alejandro Fernandez'),
(1017, 'Enfermeria', 'Bogota', 'Mariano Torres'),
(1018, 'Ingenieria', 'Bogota', 'Sandra Liliana'),
(1019, 'Medicina', 'Bogota', 'Manuel Patarroyo'),
(10110, 'Medicina, Veterinaria', 'Bogota', 'Pedro Diaz'),
(10111, 'Odontologia','Bogota', 'Sofia Marrugo');


-- -----------------------------------------------------
-- Inserciones en la tabla Programa_Educativo_UNAL:
-- -----------------------------------------------------
INSERT INTO Programa_Educativo_UNAL VALUES 
(20001, 'Artes Plásticas', 1011, 'Pregrado', 'Presencial'),
(20002, 'Matemáticas', 1012, 'Pregrado', 'Presencial'),
(20003, 'Ingeniería Agronómica', 1013, 'Pregrado', 'Presencial'),
(20004, 'Derecho', 1014, 'Pregrado', 'Presencial'),
(20005, 'Economía', 1015, 'Pregrado', 'Presencial'),
(20006, 'Antropología', 1016, 'Pregrado', 'Presencial'),
(20007, 'Enfermería', 1017, 'Pregrado', 'Presencial'),
(20008, 'Ingeniería Industrial', 1018, 'Pregrado', 'Presencial'),
(20009, 'Medicina', 1019, 'Pregrado', 'Presencial'),
(20010, 'Medicina Veterinaria', 10110, 'Pregrado', 'Presencial'),
(20011, 'Odontología', 10111, 'Pregrado', 'Presencial'),
(20012, 'Maestría en Escultura', 1011, 'Maestría', 'Presencial'),
(20013, 'Maestría en Matemáticas Aplicadas', 1012, 'Maestría', 'Presencial'),
(20014, 'Maestría en Desarrollo Rural', 1013, 'Maestría', 'Presencial'),
(20015, 'Maestría en Derecho Penal', 1014, 'Maestría', 'Presencial'),
(20016, 'Maestría en Economía Ambiental', 1015, 'Maestría', 'Presencial'),
(20017, 'Maestría en Antropología Social', 1016, 'Maestría', 'Presencial'),
(20018, 'Maestría en Enfermería Pediátrica', 1017, 'Maestría', 'Presencial'),
(20019, 'Maestría en Gestión de la Calidad', 1018, 'Maestría', 'Presencial'),
(20020, 'Maestría en Cirugía Plástica', 1019, 'Maestría', 'Presencial');


-- -----------------------------------------------------
-- Inserciones en la tabla Historia_academica_UNAL:
-- -----------------------------------------------------
INSERT INTO Historia_academica_UNAL VALUES 
(30002, 20002, 00032, 4.2, '2016-09-20', '2020-12-15'),
(30003, 20003, 00033, 4.7, '2015-10-10', '2019-11-25'),
(30004, 20004, 00034, 4.4, '2014-11-05', '2018-10-20'),
(30005, 20005, 00035, 4.6, '2013-12-12', '2017-09-28'),
(30006, 20006, 00036, 4.3, '2012-07-18', '2016-07-10'),
(30007, 20007, 00037, 4.8, '2011-08-20', '2015-12-05'),
(30008, 20008, 00038, 4.1, '2010-09-25', '2014-11-30'),
(30009, 20009, 00039, 4.9, '2009-10-30', '2013-08-15'),
(30010, 20010, 00040, 4.0, '2008-07-15', '2012-06-30'),
(30011, 20011, 00041, 4.5, '2007-08-20', '2011-12-15'),
(30012, 20012, 00042, 4.2, '2006-09-10', '2010-11-25'),
(30013, 20013, 00043, 4.7, '2005-10-05', '2009-10-20'),
(30014, 20014, 00044, 4.4, '2004-11-12', '2008-09-28'),
(30015, 20015, 00045, 4.6, '2003-12-18', '2007-07-10'),
(30016, 20016, 00046, 4.3, '2002-07-20', '2006-12-05'),
(30017, 20017, 00047, 4.8, '2001-08-25', '2005-11-30'),
(30018, 20018, 00048, 4.1, '2000-09-30', '2004-08-15'),
(30019, 20019, 00049, 4.9, '1999-07-15', '2003-06-30'),
(30020, 20020, 00050, 4.0, '1998-08-20', '2002-12-15');


-- -----------------------------------------------------
-- Inserciones en la tabla Empresa:
-- -----------------------------------------------------
INSERT INTO Empresa VALUES 
(50001, '0', 'Postobón S.A.', 'Bebidas', 'Juan Pérez', 'Colombia', 'Bogotá', 'Carrera 45 # 26-54', 'Empresa líder en la producción de bebidas.'),
(50002, '0', 'Coca Cola Ltda.', 'Bebidas', 'María Gómez', 'Colombia', 'Bogotá', 'Avenida 68 # 12-34', 'Empresa reconocida a nivel mundial por sus bebidas refrescantes.'),
(50003, '0', 'Inversiones del Futuro S.A.S.', 'Finanzas', 'Luis Martínez', 'Colombia', 'Bogotá', 'Calle 100 # 15-20', 'Empresa dedicada a la gestión de inversiones y asesoramiento financiero.'),
(50004, '0', 'Electrodomésticos Colombianos S.A.', 'Electrodomésticos', 'Andrea López', 'Colombia', 'Bogotá', 'Carrera 80 # 30-45', 'Empresa líder en la venta de electrodomésticos en Colombia.'),
(50005, '0', 'Construcciones y Estructuras Ltda.', 'Construcción', 'Carlos Rodríguez', 'Estados Unidos', 'New york', 'Calle 85 # 18-25', 'Empresa especializada en la construcción de edificaciones y estructuras.'),
(50006, '0', 'Servicios Informáticos S.A.', 'Tecnología', 'Laura Pérez', 'Colombia', 'Medellin', 'Avenida Boyacá # 40-50', 'Empresa dedicada a brindar soluciones informáticas a empresas y particulares.'),
(50007, '0', 'Transporte Veloz S.A.', 'Transporte', 'David Sánchez', 'Colombia', 'Bogotá', 'Autopista Norte # 22-15', 'Empresa de transporte terrestre de carga y logística.'),
(50008, '0', 'Alimentos Naturales Ltda.', 'Alimentos', 'Sofía Ramírez', 'Colombia', 'Bogotá', 'Carrera 70 # 28-30', 'Empresa dedicada a la producción y distribución de alimentos naturales y saludables.'),
(50009, '0', 'Consultoría Estratégica Ltda.', 'Consultoría', 'Juanita Gómez', 'Colombia', 'Cartagena', 'Calle 72 # 15-10', 'Empresa especializada en consultoría estratégica para empresas de diversos sectores.'),
(50010, '0', 'Inversiones Inmobiliarias Ltda.', 'Inmobiliaria', 'Pedro González', 'Colombia', 'Bogotá', 'Carrera 50 # 24-18', 'Empresa dedicada a la gestión y comercialización de bienes raíces en Bogotá.'),
(50011, '0', 'Productos Colombianos S.A.', 'Alimentos', 'María Rodríguez', 'Colombia', 'Cali', 'Calle 65 # 20-15', 'Empresa dedicada a la producción y distribución de productos alimenticios.'),
(50012, '0', 'Distribuidora de Electrónicos S.A.S.', 'Electrónica', 'Andrés López', 'Colombia', 'Bogotá', 'Avenida 68 # 15-30', 'Empresa dedicada a la distribución de productos electrónicos y tecnológicos.'),
(50013, '0', 'Construcciones Urbanas S.A.', 'Construcción', 'Camila Martínez', 'Colombia', 'Bogotá', 'Carrera 90 # 35-40', 'Empresa especializada en proyectos de construcción urbana.'),
(50014, '0', 'Tecnología Avanzada Ltda.', 'Tecnología', 'Luisa González', 'Colombia', 'Bogotá', 'Calle 80 # 12-25', 'Empresa líder en soluciones tecnológicas para empresas y hogares.'),
(50015, '0', 'Distribuidora de Alimentos Naturales S.A.S.', 'Alimentos', 'Diego Ramírez', 'España', 'Barcelona', 'Carrera 75 # 28-15', 'Empresa dedicada a la distribución de alimentos naturales y orgánicos.'),
(50016, '0', 'Servicios de Logística y Distribución S.A.', 'Logística', 'Andrea Gómez', 'Colombia', 'Medellin', 'Avenida 68 # 20-30', 'Empresa especializada en servicios de logística y distribución de productos.');


-- -----------------------------------------------------
-- Inserciones en la tabla Trabajo:
-- -----------------------------------------------------
INSERT INTO Trabajo VALUES 
(60001, 00001, 50001, 'Gerente de Marketing', 'Ana Gómez', '2020-01-15', '2022-05-30', 'Responsable de las estrategias de marketing de la empresa.', 'Precencial'),
(60002, 00002, 50002, 'Analista Financiero', 'Luis Pérez', '2019-08-20', '2021-11-15', 'Análisis de estados financieros y proyecciones económicas.', 'Precencial'),
(60003, 00003, 50003, 'Ingeniero Agrónomo', 'Andrés Martínez', '2018-06-10', '2020-09-25', 'Desarrollo de proyectos agrícolas y gestión de cultivos.', 'Precencial'),
(60004, 00004, 50004, 'Jefe de Ventas', 'Sofía Rodríguez', '2017-04-05', '2019-08-12', 'Supervisión del equipo de ventas y desarrollo de estrategias comerciales.', 'Precencial'),
(60005, 00005, 50005, 'Arquitecto', 'Juan Gómez', '2016-02-12', '2018-05-18', 'Diseño arquitectónico y supervisión de proyectos de construcción.', 'Precencial'),
(60006, 00006, 50006, 'Desarrollador de Software', 'Laura Pérez', '2015-01-18', '2017-03-20', 'Desarrollo de aplicaciones y sistemas informáticos.', 'Remoto'),
(60007, 00007, 50007, 'Coordinador de Logística', 'Diego Sánchez', '2014-09-20', '2016-12-25', 'Coordinación de operaciones logísticas y gestión de inventarios.', 'Precencial'),
(60008, 00008, 50008, 'Analista de Calidad', 'María Ramírez', '2013-07-25', '2015-09-30', 'Análisis de calidad de productos y procesos de producción.', 'Precencial'),
(60009, 00009, 50009, 'Consultor Estratégico', 'Carlos González', '2012-05-30', '2014-08-15', 'Asesoramiento en estrategias empresariales y desarrollo de planes de acción.', 'Precencial'),
(60010, 00010, 50010, 'Asesor Inmobiliario', 'Pedro Martínez', '2011-03-15', '2013-06-30', 'Asesoramiento en compra, venta y alquiler de bienes raíces.', 'Precencial'),
(60011, 00011, 50011, 'Diseñador Gráfico', 'Luisa Rodríguez', '2020-01-15', '2022-05-30', 'Diseño de materiales publicitarios y gráficos.', 'Remoto'),
(60012, 00012, 50012, 'Ingeniero Electrónico', 'Andrés López', '2019-08-20', '2021-11-15', 'Desarrollo de proyectos electrónicos y mantenimiento de equipos.', 'Precencial'),
(60013, 00013, 50013, 'Ingeniero Civil', 'Camila Martínez', '2018-06-10', '2020-09-25', 'Diseño y construcción de infraestructuras civiles.', 'Precencial'),
(60014, 00014, 50014, 'Analista de Sistemas', 'Luis González', '2017-04-05', '2019-08-12', 'Análisis y desarrollo de sistemas informáticos.', 'Remoto');


-- -----------------------------------------------------
-- Inserciones en la tabla Convocatoria:
-- -----------------------------------------------------
INSERT INTO Convocatoria VALUES 
(70001, '2024-06-15', '2024-07-15', 5, 'Analista de Marketing Digital', 'Marketing', 'Se busca un profesional para desarrollar estrategias de marketing digital.', 'Marketing', 'Contrato indefinido', 2000000, 4000000, 'Bogotá', 'Cundinamarca', 'Colombia', 1, 0, 'Pregrado', 'Manejo de redes sociales, Google Analytics', 50001), -- Inglés
(70002, '2024-06-20', '2024-07-20', 3, 'Desarrollador Web', 'Tecnología', 'Se requiere un desarrollador web para proyectos innovadores.', 'Tecnología', 'Contrato a término fijo', 2500000, 4500000, 'Medellín', 'Antioquia', 'Colombia', 2, 0, 'Pregrado', 'Desarrollo de aplicaciones web, HTML, CSS, JavaScript', 50002), -- Inglés
(70003, '2024-06-25', '2024-07-25', 2, 'Ingeniero Civil', 'Ingeniería', 'Se solicita un ingeniero civil para proyecto de construcción.', 'Construcción', 'Contrato a término indefinido', 3000000, 5000000, 'Cali', 'Valle del Cauca', 'Colombia', 3, 6, 'Pregrado', 'Diseño y construcción de infraestructuras civiles', 50003), -- Mandarin
(70004, '2024-07-01', '2024-07-30', 4, 'Analista Financiero', 'Finanzas', 'Se busca un analista financiero con experiencia en análisis de riesgos.', 'Finanzas', 'Contrato indefinido', 2800000, 4800000, 'Barranquilla', 'Atlántico', 'Colombia', 2, 3, 'Pregrado', 'Análisis financiero, evaluación de riesgos', 50004), -- Español
(70005, '2024-07-05', '2024-08-05', 3, 'Asesor Jurídico', 'Legal', 'Se necesita un asesor jurídico para temas corporativos.', 'Legal', 'Contrato a término indefinido', 3200000, 5200000, 'Cartagena', 'Bolívar', 'Colombia', 3, 2, 'Pregrado', 'Asesoramiento legal, elaboración de contratos', 50005), -- Español
(70006, '2024-07-10', '2024-08-10', 5, 'Analista de Datos', 'Tecnología', 'Se busca analista de datos para análisis estadístico y modelado predictivo.', 'Tecnología', 'Contrato indefinido', 3000000, 5000000, 'Bogotá', 'Cundinamarca', 'Colombia', 3, 0, 'Pregrado', 'Análisis de datos, modelado predictivo', 50006), -- Inglés
(70007, '2024-07-15', '2024-08-15', 2, 'Ingeniero Agrónomo', 'Agricultura', 'Se requiere ingeniero agrónomo para proyectos de agricultura sostenible.', 'Agricultura', 'Contrato a término indefinido', 3200000, 5200000, 'Medellín', 'Antioquia', 'Colombia', 2, 4, 'Pregrado', 'Gestión de cultivos, agricultura sostenible', 50007), -- N/A
(70008, '2024-07-20', '2024-08-20', 3, 'Diseñador Gráfico', 'Diseño', 'Se necesita diseñador gráfico para desarrollo de material visual.', 'Diseño', 'Contrato a término fijo', 2500000, 4500000, 'Cali', 'Valle del Cauca', 'Colombia', 1, 1, 'Pregrado', 'Diseño gráfico, manejo de herramientas de diseño', 50008); -- N/A


-- -----------------------------------------------------
-- Inserciones en la tabla Idioma:
-- -----------------------------------------------------
INSERT INTO Idioma VALUES
(00001, 'Inglés'),
(00002, 'Español'),
(00003, 'Mandarín'),
(00004, 'Francés'),
(00005, 'Alemán'),
(00006, 'Ruso'),
(00007, 'Italiano'),
(00008, 'Japonés'),
(00009, 'Coreano');


-- -----------------------------------------------------
-- Inserciones en la tabla Requerimiento_idioma:
-- -----------------------------------------------------
INSERT INTO Requerimiento_idioma VALUES
(00001, 70001),
(00001, 70002),
(00003, 70003),
(00002, 70004),
(00002, 70005),
(00001, 70006);


-- -----------------------------------------------------
-- Inserciones en la tabla Postulado_Convocatoria:
-- -----------------------------------------------------
INSERT INTO Postulado_Convocatoria VALUES 
(00001, 70001, '2024-06-16'),
(00042, 70001, '2024-06-17'),
(00003, 70002, '2024-06-21'),
(00044, 70002, '2024-06-22'),
(00005, 70003, '2024-06-26'),
(00006, 70003, '2024-06-27'),
(00007, 70004, '2024-07-02'),
(00008, 70004, '2024-07-03'),
(00019, 70005, '2024-07-06'),
(00020, 70005, '2024-07-07'),
(00021, 70006, '2024-07-11'),
(00012, 70006, '2024-07-12'),
(00013, 70007, '2024-07-16'),
(00034, 70007, '2024-07-17'),
(00015, 70008, '2024-07-21');


-- -----------------------------------------------------
-- Inserciones en la tabla Selección_convocatoria:
-- -----------------------------------------------------
INSERT INTO Seleccion_convocatoria VALUES 
(00001, 70001),
(00021, 70006),
(00006, 70003),
(00008, 70004),
(00020, 70005),
(00015, 70008);


-- -----------------------------------------------------
-- Inserciones en la tabla Documento_Investigacion:
-- -----------------------------------------------------
INSERT INTO Documento_Investigacion VALUES
(10029, 'Impacto de la COVID-19 en la Economía Global', 'Este documento analiza el impacto económico de la pandemia de COVID-19 a nivel global.', '2024-03-10'),
(10032, 'Artificial Intelligence in Healthcare', 'This document discusses the applications of artificial intelligence in the healthcare industry.', '2024-02-05'),
(10033, 'Desarrollo de Tecnologías Sostenibles', 'Este documento presenta el desarrollo de tecnologías sostenibles para mitigar el cambio climático.', '2023-11-30'),
(10034, 'The Future of Blockchain Technology', 'This document explores the potential future applications of blockchain technology across various industries.', '2024-04-18'),
(10035, 'Efectos del Cambio Climático en la Agricultura', 'Este documento analiza los efectos del cambio climático en la agricultura y propone estrategias de adaptación.', '2024-05-22'),
(10036, 'Advances in Quantum Computing', 'This document reviews recent advances in the field of quantum computing and their potential impact on various sectors.', '2024-03-05'),
(10037, 'Innovations in Biotechnology', 'This document highlights recent innovations in biotechnology and their applications in medicine, agriculture, and industry.', '2023-10-12'),
(10038, 'Tendencias en la Industria Automotriz', 'Este documento presenta las tendencias actuales en la industria automotriz y las innovaciones tecnológicas en vehículos.', '2024-02-28'),
(10039, 'Sustainable Urban Development Strategies', 'This document discusses sustainable urban development strategies to address challenges such as population growth and climate change.', '2023-09-08'),
(10040, 'Avances en Medicina Regenerativa', 'Este documento revisa los avances en medicina regenerativa y su potencial para tratar enfermedades crónicas y lesiones.', '2024-01-30'),
(10041, 'The Role of Artificial Intelligence in Education', 'This document explores the role of artificial intelligence in transforming education and enhancing learning experiences.', '2024-04-10'),
(10042, 'Desarrollo de Energías Renovables en América Latina', 'Este documento analiza el desarrollo de energías renovables en América Latina y los desafíos para su implementación.', '2023-12-15'),
(10043, 'Advancements in Nanotechnology', 'This document reviews recent advancements in nanotechnology and their applications in electronics, medicine, and materials science.', '2024-05-05');


-- -----------------------------------------------------
-- Inserciones en la tabla Participacion_Investigacion:
-- -----------------------------------------------------
INSERT INTO Participacion_Investigacion VALUES 
(00001, 10029),
(00022, 10032),
(00003, 10033),
(00034, 10033),
(00005, 10035),
(00006, 10036),
(00047, 10037),
(00008, 10038),
(00029, 10039),
(00040, 10040),
(00011, 10041),
(00012, 10042),
(00050, 10043);


-- -----------------------------------------------------
-- Inserciones en la tabla Catedra_con_egresados:
-- -----------------------------------------------------
INSERT INTO Catedra_con_egresados VALUES
(30001, 'Cátedra de Innovación Tecnológica', 'Naría Rodríguez', 'Incríbete y aprende sobre la increíble innovación tecnológica que envuelve nuestro mundo actual', 'Presencial', '2024-06-10', '2024-07-15', '14:00:00', '16:00:00', 1013),
(30002, 'Cátedra de Emprendimiento', 'Juan Pérez', 'Aprende a emprender con éxito en el mundo de los negocios', 'Virtual', '2024-06-20', '2024-07-25', '10:00:00', '12:00:00', 1016),
(30003, 'Cátedra de Sostenibilidad Ambiental', 'Laura Martínez', 'Descubre cómo puedes contribuir a la sostenibilidad ambiental', 'Presencial', '2024-07-30', '2024-09-05', '09:00:00', '11:00:00', 1013),
(30004, 'Cátedra de Liderazgo Empresarial', 'Pedro Gómez', 'Desarrolla tus habilidades de liderazgo en el ámbito empresarial', 'Virtual', '2024-08-10', '2024-09-15', '15:00:00', '17:00:00', 1015),
(30005, 'Cátedra de Marketing Digital', 'Sofía Sánchez', 'Aprende las estrategias más efectivas de marketing digital', 'Presencial', '2024-09-20', '2024-10-25', '16:00:00', '18:00:00', 1018),
(30006, 'Cátedra de Inteligencia Artificial', 'Carlos Fernández', 'Descubre el fascinante mundo de la inteligencia artificial', 'Virtual', '2024-11-01', '2024-12-06', '14:00:00', '16:00:00', 1012),
(30007, 'Cátedra de Desarrollo Humano', 'Ana López', 'Explora las diferentes facetas del desarrollo humano', 'Presencial', '2025-01-10', '2025-02-15', '10:00:00', '12:00:00', 1016),
(30008, 'Cátedra de Finanzas Corporativas', 'David Pérez', 'Adquiere conocimientos fundamentales sobre finanzas corporativas', 'Virtual', '2025-02-20', '2025-03-27', '09:00:00', '11:00:00', 1015),
(30009, 'Cátedra de Ética Empresarial', 'Paula Díaz', 'Aprende sobre la importancia de la ética en el mundo empresarial', 'Presencial', '2025-04-05', '2025-05-10', '15:00:00', '17:00:00', 1014),
(30010, 'Cátedra de Desarrollo Web', 'Alejandro Gómez', 'Aprende a desarrollar sitios web desde cero', 'Virtual', '2025-05-15', '2025-06-20', '16:00:00', '18:00:00', 1018),
(30011, 'Cátedra de Derecho Laboral', 'María Martínez', 'Conoce tus derechos y obligaciones como trabajador', 'Presencial', '2025-07-01', '2025-08-05', '14:00:00', '16:00:00', 1014),
(30012, 'Cátedra de Negocios Internacionales', 'Juan Rodríguez', 'Descubre cómo hacer negocios en el ámbito internacional', 'Virtual', '2025-08-10', '2025-09-15', '10:00:00', '12:00:00', 1015),
(30013, 'Cátedra de Recursos Humanos', 'Laura Pérez', 'Aprende a gestionar eficazmente los recursos humanos de una empresa', 'Presencial', '2025-10-01', '2025-11-05', '09:00:00', '11:00:00', 1017),
(30014, 'Cátedra de Economía Circular', 'Pedro Martínez', 'Descubre cómo puedes contribuir a la economía circular', 'Virtual', '2025-11-10', '2025-12-15', '15:00:00', '17:00:00', 1013),
(30015, 'Cátedra de Comunicación Organizacional', 'Sofía Gómez', 'Aprende a comunicarte eficazmente en un entorno organizacional', 'Presencial', '2026-01-10', '2026-02-15', '16:00:00', '18:00:00', 1016),
(30016, 'Cátedra de Gestión de Proyectos', 'Carlos Pérez', 'Adquiere habilidades para gestionar proyectos de manera eficaz', 'Virtual', '2026-02-20', '2026-03-27', '14:00:00', '16:00:00', 1018),
(30017, 'Cátedra de Tecnología Educativa', 'Ana Gómez', 'Descubre cómo la tecnología puede mejorar la educación', 'Presencial', '2026-04-05', '2026-05-10', '10:00:00', '12:00:00', 1012),
(30018, 'Cátedra de Derechos Humanos', 'David Fernández', 'Aprende sobre los derechos humanos y cómo protegerlos', 'Virtual', '2026-05-15', '2026-06-20', '09:00:00', '11:00:00', 1017),
(30019, 'Cátedra de Psicología Organizacional', 'Paula Martínez', 'Descubre cómo la psicología puede mejorar el rendimiento organizacional', 'Presencial', '2026-07-01', '2026-08-05', '15:00:00', '17:00:00', 1016),
(30020, 'Cátedra de Gestión Ambiental', 'Alejandro Pérez', 'Aprende a gestionar los recursos ambientales de manera sostenible', 'Virtual', '2026-08-10', '2026-09-15', '16:00:00', '18:00:00', 1013);


-- -----------------------------------------------------
-- Inserciones en la tabla Egresado_coordinador_catedra:
-- -----------------------------------------------------
INSERT INTO Egresado_coordinador_catedra VALUES
(00001, 30001),
(00002, 30002),
(00003, 30003),
(00004, 30004),
(00009, 30009),
(00010, 30010),
(00011, 30011),
(00012, 30012),
(00013, 30013),
(00014, 30014),
(00015, 30015),
(00016, 30016),
(00017, 30017),
(00018, 30018),
(00019, 30019),
(00020, 30020),
(00021, 30001),
(00022, 30002),
(00023, 30003),
(00024, 30004),
(00027, 30005),
(00033, 30006),
(00034, 30007),
(00036, 30008),
(00039, 30009),
(00038, 30010),
(00041, 30011),
(00045, 30012),
(00048, 30013),
(00049, 30014),
(00051, 30015);


-- -----------------------------------------------------
-- Inserciones en la tabla Dialogo_egresados_conferencia:
-- -----------------------------------------------------
INSERT INTO Dialogo_egresados_conferencia VALUES
(400001, 'Encuentro de Networking', 'Charla muy interesante sobre las claves que nadie te cuenta sobre hacer Networking', '2024-07-10', '9:00:00', '11:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLScEUbAfQ7acO_ZKUjXm7NyxgXkRh9y-PsXLk1EGv9srUrXrpA/viewform'),
(400002, 'Seminario sobre Big Data y Analítica', 'Descubre cómo el Big Data y la Analítica están cambiando el mundo', '2025-05-25', '10:00:00', '11:10:00', 'https://docs.google.com/forms/d/e/1FAIpQLScEUbAfQ7acO_ZKUjXm7NyxgXkRh9y-PsXLk1EGv9srUrXrpL/viewform'),
(400003, 'Taller de Habilidades Comunicativas', 'Desarrolla tus habilidades comunicativas para tener éxito en el mundo profesional', '2025-06-30', '15:00:00', '15:35:00', 'https://docs.google.com/forms/d/e/1FAIpQLScEUbAfQ7acO_ZKUjXm7NyxgXkRh9y-PsXLk1EGv9srUrXrpM/viewform'),
(400004, 'Conferencia sobre Cambio Climático', 'Aprende sobre el cambio climático y cómo puedes hacer la diferencia', '2025-07-15', '14:00:00', '14:45:00', 'https://docs.google.com/forms/d/e/1FAIpQLScEUbAfQ7acO_ZKUjXm7NyxgXkRh9y-PsXLk1EGv9srUrXrpN/viewform');


-- -----------------------------------------------------
-- Inserciones en la tabla Dialogo_egresados_conversatorio:
-- -----------------------------------------------------
INSERT INTO Dialogo_egresados_conversatorio VALUES
(400001, 'Inteligencia artificial, ¿innovación o sentencia?', 'Interesante debate sobre la IA y sobre lo que deparará el futuro gracias a esta tecnología', '2024-07-01', '13:00:00', '17:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSdgw_hEOCJval6HHKTVHdxIBQFBjC9d5FNAbS_cvtyQERlyog/viewform'),
(400002, 'La revolución de las criptomonedas', 'debate sobre cómo las criptomonedas están revolucionando el mundo financiero', '2024-06-25', '14:00:00', '16:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSdgw_hEOCJval6HHKTVHdxIBQFBjC9d5FNAbS_cvtyQERlyog/viewform'),
(400003, 'El papel de la tecnología en la educación', 'Discusión sobre cómo la tecnología está cambiando la educación', '2024-06-26', '09:00:00', '11:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSdgw_hEOCJval6HHKTVHdxIBQFBjC9d5FNAbS_cvtyQERlyog/viewform'),
(400004, 'El América y su futuro en el mundo', 'Discusión con el invitado Carlos Hernán', '2024-07-02', '13:00:00', '15:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSdgw_hEOCJval6HHKTVHdxIBQFBjC9d5FNAbS_cvtyQERlyog/viewform');


-- -----------------------------------------------------
-- Inserciones en la tabla Dialogo_egresados_foro:
-- -----------------------------------------------------
INSERT INTO Dialogo_egresados_foro VALUES
(400001, 'Tips para ir a Japón', 'Foro donde se abordan tématicas sobre comida, comida cruda, reglas sociales, etc', '2024-07-10', '11:00:00', '13:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSfqvm98SHeRqPO06j8eW8ZReZCm0zr0H_J5Wf1c3XG8imSwNw/viewform'),
(400002, 'Desarrollo de habilidades blandas', 'Foro para discutir la importancia de las habilidades blandas en el mundo laboral', '2024-07-15', '10:00:00', '12:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSfqvm98SHeRqPO06j8eW8ZReZCm0zr0H_J5Wf1c3XG8imSwNw/viewform'),
(400003, 'Big Data en la toma de decisiones', 'Foro para discutir cómo el Big Data está cambiando la toma de decisiones en las empresas', '2024-08-24', '10:00:00', '12:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSfqvm98SHeRqPO06j8eW8ZReZCm0zr0H_J5Wf1c3XG8imSwNw/viewform'),
(400004, 'El papel de la tecnología en la salud', 'Foro para discutir cómo la tecnología está cambiando el sector de la salud', '2024-09-03', '09:00:00', '11:00:00', 'https://docs.google.com/forms/d/e/1FAIpQLSfqvm98SHeRqPO06j8eW8ZReZCm0zr0H_J5Wf1c3XG8imSwNw/viewform');


-- -----------------------------------------------------
-- Inserciones en la tabla Participante_externo_dialogo_egresados:
-- -----------------------------------------------------
INSERT INTO Participante_externo_dialogo_egresados VALUES
(100001, 'Laura Vanesa Pino Barrios'),
(100002, 'Jonathan Cristobal Puig Costas'),
(100003, 'Ana Maria Rodriguez Lopez'),
(100004, 'Carlos Alberto Perez Gomez'),
(100005, 'Sofia Carolina Martinez Diaz'),
(100006, 'Juan David Hernandez Torres'),
(100007, 'Luisa Fernanda Ramirez Castro'),
(100008, 'Diego Alejandro Sanchez Vargas'),
(100009, 'Valentina Isabella Gutierrez Arias'),
(100010, 'Santiago Andres Morales Cardenas'),
(100011, 'Maria Jose Rios Alvarez'),
(100012, 'Andres Felipe Torres Marin'),
(100013, 'Camila Sofia Gomez Rojas'),
(100014, 'Gabriel Antonio Diaz Vargas'),
(100015, 'Mariana Alejandra Ramirez Lopez'),
(100016, 'Jose David Gonzalez Castro'),
(100017, 'Luisa Maria Hernandez Morales');


-- -----------------------------------------------------
-- Inserciones en la tabla Conferencista_externo:
-- -----------------------------------------------------
INSERT INTO Conferencista_externo VALUES
(100001, 400001, 'Experta en networking, con más de 5 años de experiencia haciendo networking'),
(100002, 400002, 'Científico de datos muy reconocido por sus aportes en manejo de Big Data'),
(100005, 400003, 'Psicóloga estrella de la universidad de Harvard'),
(100017, 400004, 'Ambientalista desde niño, ha creado diversas campañas contra la contaminación y el cambio climático');


-- -----------------------------------------------------
-- Inserciones en la tabla Egresado_conferencista:
-- -----------------------------------------------------
INSERT INTO Egresado_conferencista VALUES
(00003, 400001, 'Egresado que cuenta con contactos tan sonados como Elon Musk, Biden y demás personas de mucho poder'),
(00004, 400002, 'Practicante como analista de datos en IBM'),
(00005, 400003, 'Persona muy sociable y amigable según todas las personas que conoce'),
(00017, 400004, 'Creador de varias campañas en contra del cambio climático');


-- -----------------------------------------------------
-- Inserciones en la tabla Panelista_externo:
-- -----------------------------------------------------
INSERT INTO Panelista_externo VALUES
(100004, 400001, 'Ingeniero de inteligencia artificial desde los 8 años'),
(100003, 400001, 'Desarrolla retos de redes neuronales por diversión en sus tiempos libres'),
(100006, 400002, 'Es reconocido por haber desarrollado publicaciones muy complejas de cálculo vectorial y álgebra abstracta antes de aprender a hablar'),
(100007, 400003, 'Ella se educó a sí misma con un Teléfono sin internet'),
(100008, 400004, 'Participó en las barras bravas en los tiempos más oscuros del américa, se dice que la FIFA no lo aceptó como futbolista por tener un desempeño inhumano con el balón');


-- -----------------------------------------------------
-- Inserciones en la tabla Egresado_panelista:
-- -----------------------------------------------------
INSERT INTO Egresado_panelista VALUES
(00001, 400001, 'Fue parte del equipo que entrenó a GPT, se especializó en IA generativo y hoy en día se identifica a sí mismo como una Inteligencia artificial'),
(00002, 400002, 'Se dice que fue el que filtró el que Trailer de GTA VI con el Banner de Bitcoin'),
(00006, 400003, 'Cuando estaba en el colegio, el no recibía la clase, él daba la clase con ayuda de su computador cuántico'),
(00007, 400004, 'Su vida, sus relaciones, su presente, pasado y futúro giran en torno al América, se dice que hasta acosaba a los jugadores');


-- -----------------------------------------------------
-- Inserciones en la tabla Moderador_externo:
-- -----------------------------------------------------
INSERT INTO Moderador_externo VALUES
(100010, 400001, 'Competidor y campeón en varios concursos de inteligencia artificial, una vez llegó a quedarse dormido en uno debido a una dificultad muy fácil para él quedando igualmente campeón'),
(100009, 400002, 'Antes de nacer, ya tenía inversiones en Crypto por encima de los 10 millones de dólares'),
(100011, 400003, 'Ha enseñado durante más de 5 años por medio de tecnologías digitales'),
(100012, 400004, 'Fue un árbitro muy reconocido, aunque con varias sospechas de haber pitado a favor del América');


-- -----------------------------------------------------
-- Inserciones en la tabla Egresado_moderador:
-- -----------------------------------------------------
INSERT INTO Egresado_moderador VALUES
(00008, 400001, 'Matemático muy respetado experto en inteligencia artificial'),
(00009, 400002, 'Inversor y trader con más de 3 años de experiencia'),
(00010, 400003, 'Ha publicado varios artículos sobre la influencia de la tecnología en la educación'),
(00011, 400004, 'Deportista muy culto en el fútbol');


-- -----------------------------------------------------
-- Inserciones en la tabla Egresado_ponente:
-- -----------------------------------------------------
INSERT INTO Egresado_ponente VAlUES
(00020, 400001, 'Amante de Japón y es muy bien conocedora de la cultura japones'),
(00022, 400001, 'Ha viajado por bastantes lugares del mundo, se dedica a viajar y conocer nuevos lugares'),
(00021, 400002, 'Comunicador social experto'),
(00023, 400002, 'Periodista y humorista muy reconocido'),
(00024, 400003, 'Project manager de proyectos de Big Data'),
(00025, 400003, 'Profesor de Big Data en cursos online'),
(00026, 400004, 'Ingeniera bioinformática apasionada por enseñar en comunidades online'),
(00027, 400004, 'Ha sido profesor en distintas universidades y ha sido partícipe de varias investigaciones para innovación de la tecnología en el campo de la salud');


-- -----------------------------------------------------
-- Inserciones en la tabla Egresado_coordinador_dialogo:
-- -----------------------------------------------------
INSERT INTO Egresado_coordinador_dialogo VAlUES
(00028, 400001, 'Vivió en Japón durante 7 años'),
(00029, 400002, 'Psicólogo mundialmente conocido por aportes a la neurociencia'),
(00030, 400003, 'CEO de una Startap que maneja cantidades inmensas de datos'),
(00032, 400004, 'Ingeniera robótica, investigadora de soluciones electrónicas para el tratamiento');
