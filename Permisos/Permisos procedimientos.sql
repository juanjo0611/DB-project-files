use proyecto;

-- porcentaje_egresados_posgrado
GRANT EXECUTE ON FUNCTION porcentaje_egresados_posgrado TO 'general'@'localhost';
GRANT EXECUTE ON FUNCTION porcentaje_egresados_posgrado TO 'egresado'@'localhost';
GRANT EXECUTE ON FUNCTION porcentaje_egresados_posgrado TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION porcentaje_egresados_posgrado TO 'administrativo'@'localhost';

-- todas_facultades_UNAL: 
GRANT EXECUTE ON PROCEDURE todas_facultades_UNAL TO 'administrativo'@'localhost';

-- info_inicio_sesion_egresado: 
GRANT EXECUTE ON PROCEDURE info_inicio_sesion_egresado TO 'general'@'localhost';

-- informacion_egresado 
GRANT EXECUTE ON PROCEDURE informacion_egresado TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE informacion_egresado TO 'administrativo'@'localhost';

--  egresado_historia_academica_UNAL
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_UNAL TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_UNAL TO 'administrativo'@'localhost';

-- egresado_historia_academica_externa 
GRANT EXECUTE ON PROCEDURE  egresado_historia_academica_externa TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE egresado_historia_academica_externa  TO 'administrativo'@'localhost';

-- egresado_documento_investigacion
GRANT EXECUTE ON PROCEDURE egresado_documento_investigacion TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE egresado_documento_investigacion TO 'administrativo'@'localhost';

-- Trabajo_egresado 
GRANT EXECUTE ON PROCEDURE Trabajo_egresado TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE Trabajo_egresado TO 'administrativo'@'localhost';



-- catedras_egresados_siquientes 
GRANT EXECUTE ON PROCEDURE catedras_egresados_siquientes TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE catedras_egresados_siquientes TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE catedras_egresados_siquientes TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE catedras_egresados_siquientes TO 'administrativo'@'localhost';

-- catedras_egresados_anteriores 
GRANT EXECUTE ON PROCEDURE catedras_egresados_anteriores TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE catedras_egresados_anteriores TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE catedras_egresados_anteriores TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE catedras_egresados_anteriores TO 'administrativo'@'localhost';

-- info_catedra 
GRANT EXECUTE ON PROCEDURE info_catedra TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE info_catedra TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE info_catedra TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE info_catedra TO 'administrativo'@'localhost';

-- egresados_coordinar_catedra 
GRANT EXECUTE ON PROCEDURE egresados_coordinar_catedra TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE egresados_coordinar_catedra  TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE egresados_coordinar_catedra  TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE egresados_coordinar_catedra  TO 'administrativo'@'localhost';

-- insertar_catedra
GRANT EXECUTE ON PROCEDURE insertar_catedra TO 'administrativo'@'localhost';

-- eliminar_catedra
GRANT EXECUTE ON PROCEDURE eliminar_catedra TO 'administrativo'@'localhost';

-- min_id_catedra 
GRANT EXECUTE ON FUNCTION min_id_catedra TO 'general'@'localhost';
GRANT EXECUTE ON FUNCTION min_id_catedra TO 'egresado'@'localhost';
GRANT EXECUTE ON FUNCTION min_id_catedra TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION min_id_catedra TO 'administrativo'@'localhost';

-- max_id_catedra 
GRANT EXECUTE ON FUNCTION max_id_catedra TO 'general'@'localhost';
GRANT EXECUTE ON FUNCTION max_id_catedra TO 'egresado'@'localhost';
GRANT EXECUTE ON FUNCTION max_id_catedra TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION max_id_catedra TO 'administrativo'@'localhost';

-- cantidad_egresados_seleccionados_convocatoria 
GRANT EXECUTE ON FUNCTION cantidad_egresados_seleccionados_convocatoria TO 'general'@'localhost';
GRANT EXECUTE ON FUNCTION cantidad_egresados_seleccionados_convocatoria TO 'egresado'@'localhost';
GRANT EXECUTE ON FUNCTION cantidad_egresados_seleccionados_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION cantidad_egresados_seleccionados_convocatoria TO 'administrativo'@'localhost';

-- buscar_convocatorias_siguientes 
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_siguientes TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_siguientes TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_siguientes TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_siguientes TO 'administrativo'@'localhost';

-- buscar_convocatorias_anteriores 
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_anteriores TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_anteriores TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_anteriores TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE buscar_convocatorias_anteriores TO 'administrativo'@'localhost';

-- info_convocatoria 
GRANT EXECUTE ON PROCEDURE info_convocatoria TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE info_convocatoria TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE info_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE info_convocatoria TO 'administrativo'@'localhost';

-- idiomas_convocatoria 
GRANT EXECUTE ON PROCEDURE idiomas_convocatoria TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE idiomas_convocatoria TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE idiomas_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE idiomas_convocatoria TO 'administrativo'@'localhost';

-- postulados_convocatoria 
GRANT EXECUTE ON PROCEDURE postulados_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE postulados_convocatoria  TO 'administrativo'@'localhost';

-- postularse
GRANT EXECUTE ON PROCEDURE postularse TO 'egresado'@'localhost'; 

-- eliminar_postulante 
GRANT EXECUTE ON PROCEDURE eliminar_postulante TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE eliminar_postulante TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE eliminar_postulante TO 'administrativo'@'localhost';

-- eliminar_seleccion_convocatoria
GRANT EXECUTE ON PROCEDURE eliminar_seleccion_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE eliminar_seleccion_convocatoria TO 'administrativo'@'localhost';

-- selecionar_postulante
GRANT EXECUTE ON PROCEDURE selecionar_postulante TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE selecionar_postulante TO 'administrativo'@'localhost';

-- min_id_convocatoria 
GRANT EXECUTE ON FUNCTION min_id_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION min_id_convocatoria TO 'administrativo'@'localhost';

-- max_id_convocatoria 
GRANT EXECUTE ON FUNCTION max_id_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION max_id_convocatoria TO 'administrativo'@'localhost';

-- inserta_requerimiento_idioma 
GRANT EXECUTE ON PROCEDURE inserta_requerimiento_idioma TO 'administrativo'@'localhost';

-- insertar_convocatoria
GRANT EXECUTE ON PROCEDURE insertar_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE insertar_convocatoria TO 'administrativo'@'localhost';

-- eliminar_convocatoria
GRANT EXECUTE ON PROCEDURE eliminar_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE eliminar_convocatoria TO 'administrativo'@'localhost';

-- actualizar_convocatoria 
GRANT EXECUTE ON PROCEDURE actualizar_convocatoria TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE actualizar_convocatoria TO 'administrativo'@'localhost';

-- todos_idiomas 
GRANT EXECUTE ON PROCEDURE todos_idiomas TO 'empresa'@'localhost';

-- info_empresa
GRANT EXECUTE ON PROCEDURE info_empresa TO 'general'@'localhost'; 
GRANT EXECUTE ON PROCEDURE info_empresa TO 'egresado'@'localhost'; 
GRANT EXECUTE ON PROCEDURE info_empresa TO 'empresa'@'localhost';
GRANT EXECUTE ON PROCEDURE info_empresa TO 'administrativo'@'localhost';

-- info_inicion_sesion_empresa 
GRANT EXECUTE ON PROCEDURE info_inicion_sesion_empresa TO 'general'@'localhost'; 

-- egresado_postulado
GRANT EXECUTE ON FUNCTION egresado_postulado TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION egresado_postulado TO 'administrativo'@'localhost';

-- egresado_seleccionado
GRANT EXECUTE ON FUNCTION egresado_seleccionado TO 'empresa'@'localhost';
GRANT EXECUTE ON FUNCTION egresado_seleccionado TO 'administrativo'@'localhost';