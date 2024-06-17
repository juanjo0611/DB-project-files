-- Triggers
-- Trigger en inserciones
DROP TRIGGER IF EXISTS trg_insert_seleccion_convocatoria;

DELIMITER $$
CREATE TRIGGER trg_insert_seleccion_convocatoria BEFORE INSERT ON Seleccion_convocatoria FOR EACH ROW
BEGIN
DECLARE Vacantes_totales INT;
DECLARE Vacantes_asignadas INT;
SELECT Vacantes_convoc INTO Vacantes_totales FROM Convocatoria WHERE Id_convocatoria = NEW.Id_convocatoria;
SELECT COUNT(*) INTO Vacantes_asignadas FROM Seleccion_convocatoria WHERE Id_convocatoria= NEW.Id_convocatoria;
IF Vacantes_totales <= Vacantes_asignadas THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT="No se pueden selecionar más postulantes, número maximo de vacantes alcanzado";
END IF;
END$$
DELIMITER ;
-- Trigger en eliminacion
DROP TRIGGER IF EXISTS trg_delete_catedra_con_egresados;

DELIMITER $$
CREATE TRIGGER trg_delete_catedra_con_egresados BEFORE DELETE ON Catedra_con_egresados FOR EACH ROW
BEGIN
DELETE FROM Egresado_coordinador_catedra WHERE Id_catedra=OLD.Id_catedra;
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_delete_postulado_convocatoria;

DELIMITER $$
CREATE TRIGGER trg_delete_postulado_convocatoria BEFORE DELETE ON Postulado_convocatoria FOR EACH ROW
BEGIN
DELETE FROM Seleccion_convocatoria WHERE Id_egresado=OLD.Id_egresado AND Id_convocatoria=OLD.Id_convocatoria;
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_delete_convocatoria;

DELIMITER $$
CREATE TRIGGER trg_delete_convocatoria AFTER DELETE ON Convocatoria FOR EACH ROW
BEGIN
DELETE FROM Requerimiento_idioma WHERE Id_convocatoria = OLD.Id_convocatoria;
DELETE FROM Postulado_convocatoria WHERE Id_convocatoria = OLD.Id_convocatoria;
DELETE FROM Seleccion_convocatoria WHERE Id_convocatoria = OLD.Id_convocatoria;
END $$
DELIMITER ;