USE proyecto;
-- INDICES
-- Tabla Empresa
CREATE INDEX idx_pais_empresa ON Empresa(Pais_empresa);
-- Tabla Programa_educativo_UNAL
CREATE INDEX idx_nom_programa_UNAL ON Programa_educativo_UNAL(Nom_programa_UNAL);
-- Tabla Facultad_UNAL
CREATE INDEX idx_nombre_facultad_UNAL ON Facultad_UNAL(Nombre_facultad_UNAL);
-- Tabla Catedra_con_egresados
CREATE INDEX idx_fecha_final ON Catedra_con_egresados(Fecha_final);
CREATE INDEX idx_fecha_final_id_catedra ON Catedra_con_egresados(Fecha_final,Id_catedra);
-- Tabla Convocatoria
CREATE INDEX idx_fecha_finalizacion_inicio_vacantes ON Convocatoria(Fecha_finalizacion_convoc,Fecha_inicio_convoc,Vacantes_convoc);
CREATE INDEX idx_fecha_finalizacion_inicio_vacantes_ID ON Convocatoria(Fecha_finalizacion_convoc,Fecha_inicio_convoc,Vacantes_convoc,Id_convocatoria);
