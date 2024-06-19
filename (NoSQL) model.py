import pymongo as pm

mongoClient =  pm.MongoClient('localhost', port = 27017)
midb=mongoClient.Proyecto
midb.create_collection('Egresado')
Egresado=midb.Egresado
Egresado.insert_one({'_id': 46646412 , 'Password_egresado': 1234,'Nipo_documento':'Cedula',
                     'Nom_egresado':'Alfredo','Ape_egresado':'Garabito','Fecha_nacimiento':'2000-01-01',
                     'Genero':'Masculino','Grupo_etnico':'No especificado','Correo_egresado':'Alfredojsks@gmail.com',
                     'Celular_egresado': 1023456789,'Direccion_contacto':'Calle 82C #45-32',
                     'Pais_egresado':'Colombia','Historial_laboral':[{'Nit_empresa':7456891235,'Nombre_empresa':'Farmaceutica S.A', 
                                                                      'Cargo_trabajo':'Quimico supervisor','Jefe_trabajo':'Jose Ferreira',
                                                                      'Fecha_ingreso':'2022-03-01','Fecha_salida':'2023-03-04',
                                                                      'Descripcion':'Encargado de la supervision de la produccion correcta de medicamentos',
                                                                      'Tipo_trabajo':'Presencial'}],
                     'Historia_academica_UNAL': [{'Nombre_programa':'Quimica', 'Facultad':'Facultad de quimica','Tipo_programa':'Pregrado','Nota_final':4.0,'Fecha_entrada':'2018-01-01','Fecha_grado':'2021-12-12'}],
                     'Historia_academica_externa': [{'Nombre_programa_externo':'Quimica Farmaceutica','Facultad_externa':'Facultad de ciencias','Institucion_Educativa':'Univesidad de buenos aires','Tipo_programa':'Especializacion','Nota_final':4.2,'Fecha_entrada':'2021-01-01','Fecha_grado':'2022-12-12'}],
                     'Documentos_investigacion':['Como sintetisar medicamentos']
                     })
midb.create_collection('Empresa')
Empresa=midb.Empresa
Empresa.insert_one({'Nit_empresa':7456891235,'Password_empresa':45678,'Nombre_empresa':'Farmaceutica S.A',
                    'Actividad_economica_principal':'Fabricacion de medicamentos','Nombre_gerente':'Jose Fernandez',
                    'Pais_empresa':'Colombia','Ciudad_empresa':'Bogotá','Direccion_empresa':'Calle 112 #53-45',
                    'Descripcion':'Empresa que se encarga de la fabircacion de medicamentos e investigacion de nuevos remedios',
                    'Convocatorias':[{'Id_convocatoria':1,'Cargo':'Quimico jefe','Fecha_inicio':'2024-06-01','Fecha_final':'2024-07-01',
                                      'Vacantes':1,'Profesion':'Quimico','Experiencio':{'anios':0,'meses':6}}]})

midb.create_collection("Convocatoria")
Convocatoria=midb.Convocatoria
Convocatoria.insert_one({'Id_convocatoria':1,'Cargo':'Quimico jefe','Fecha_inicio':'2024-06-01','Fecha_final':'2024-07-01',
                         'Vacantes':1,'Profesion':'Quimico','Experiencio':{'anios':0,'meses':6},'Descripcion':'Jefe quimico encargado de manejar un laboratoria',
                         'Sector_laboral':'Farmaseutica','Tipo_contrato':'Termino indefinido', 'Rango_salarial': {'min':5000000,'max':10000000},
                         'Ciudad':'Bogotá','Region':'Bogota','Pais':'Colombia', 'Nivel_educativo':'Posgrado', 'Requerimientos_especificos':'Trabajo en equipo',
                         'Nit_empresa': 7456891235, 'Nombre_empresa':'Farmaceutica S.A','idiomas':['Español','Ingles'],
                         'Postulados':[{'_id': 46646412 ,'Nom_egresado':'Alfredo','Ape_egresado':'Garabito','Fecha_postulacion':'2024-06-02'}],
                         'Seleccionados':[{'_id': 46646412 ,'Nom_egresado':'Alfredo','Ape_egresado':'Garabito'}]
                        })
midb.create_collection("Catedra")
Catedra=midb.Catedra
Catedra.insert_one({'Id_catedra':1,'Nombre_catedra':'Entender los fenomenos de la Luz','Nombre_docente':'Joaquin Alvarez',
                    'Descripcion_catedra':'Explicacion teorica y practica del comportamiento de la luz', 'Modalidad':'Presencial',
                    'Fecha_inicio':'2024-01-01','Fecha_final':'2024-02-02','Hora_inicio':'02:00:00','Hora_final':'04:00:00','Facultad':'Facultad de fisica',
                    'Egresados_coordinadores':[{'_id':46646412, 'Nom_egresado':'Alfredo','Ape_egresado':'Garabito'}] })
