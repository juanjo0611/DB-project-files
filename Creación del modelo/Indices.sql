USE proyecto;
-- INDICES
-- Tabla Empresa
-- Se utiliza para obtimizar el llamado de la vista egresados_trabajar_paises, ya que esta vista utiliza el campo Pais_empresa para clausulas de order by y group by
CREATE INDEX idx_pais_empresa ON Empresa(Pais_empresa);
-- Tabla Programa_educativo_UNAL
-- Se utiliza para optimizar la vista programa_educativo_informacion, ya que esta vista utiliza el campo Nom_programa_UNAL para una clausula order by
CREATE INDEX idx_nom_programa_UNAL ON Programa_educativo_UNAL(Nom_programa_UNAL);
-- Tabla Facultad_UNAL
-- Se utiliza para optimizar la vista documentos_por_facultad, ya que esta vista utiliza el campo Nom_facultad_UNAL para una clausula order by
CREATE INDEX idx_nombre_facultad_UNAL ON Facultad_UNAL(Nombre_facultad_UNAL);
-- Tabla Catedra_con_egresados
-- Se utiliza para optimizar la vista catedras, ya que esta vista utiliza el campo Fecha_final para una clausula where
CREATE INDEX idx_fecha_final ON Catedra_con_egresados(Fecha_final);
-- Tabla Convocatoria
-- Se utiliza para optimizar la vista convocatorias, ya que esta vista utiliza los campos Fecha_finalizacion_convoc,Fecha_inicio_convoc y Vacantes_convoc para una clausula where
CREATE INDEX idx_fecha_finalizacion_inicio_vacantes ON Convocatoria(Fecha_finalizacion_convoc,Fecha_inicio_convoc,Vacantes_convoc);
-- Se utiliza para optimizar el proceso convocatorias_empresa, ya que este proceso utiliza los campos Fecha_finalizacion_convoc,Fecha_inicio_convoc,Vacantes_convoc y Nit_empresa  para una clausula where
CREATE INDEX idx_fecha_finalizacion_inicio_vacantes_ID ON Convocatoria(Fecha_finalizacion_convoc,Fecha_inicio_convoc,Vacantes_convoc,Nit_empresa);
