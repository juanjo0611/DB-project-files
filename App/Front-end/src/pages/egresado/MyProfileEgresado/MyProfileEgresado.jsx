import Header from '../../../components/global/Header/Header'
import css from './MyProfileEgresado.module.css'
import { useEgresadoInfo } from '../../../hooks/egresado/useEgresadoInfo'
import SimpleDataObjectTable from '../../../components/shared/SimpleDataObjectTable/SimpleDataObjectTable'
import { useNavigate } from 'react-router-dom'
import { useContext, useEffect } from 'react'
import { WhoContext } from '../../../Routes'
import { ROLES } from '../../../globalVariables/Data'
import { useEgresadoHistoriaAcademicaUnal } from '../../../hooks/egresado/useEgresadoHistoriaAcademicaUnal'
import { useEgresadoHistoriaAcademicaExterna } from '../../../hooks/egresado/useEgresadoHistoriaAcademicaExterna'
import { useEgresadoDocumentosInvestigacion } from '../../../hooks/egresado/useEgresadoDocumentosInvestigacion'
import { useEgresadoHistorialLaboral } from '../../../hooks/egresado/useEgresadoHistorialLaboral'
import { formatDate } from '../../../utilities/formatDate'

const MyProfileEgresado = () => {
  const { who } = useContext(WhoContext)
  const { egresadoProps } = useEgresadoInfo({ byId: false })
  const { historiaAcademicaUnal } = useEgresadoHistoriaAcademicaUnal()
  const { historiaAcademicaExterna } = useEgresadoHistoriaAcademicaExterna()
  const { documentosInvestigacion } = useEgresadoDocumentosInvestigacion()
  const { historialLaboral } = useEgresadoHistorialLaboral()
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role !== ROLES.EGRESADO) {
      navigate('/login')
    }
  }, [who.role])

  // console.log(historiaAcademicaUnal)
  // console.log(historiaAcademicaExterna)
  // console.log(documentosInvestigacion)
  // console.log(historialLaboral)

  return (
    <>
      <Header />
      <main className={css.main}>
        <h1 className={css.title}>Mi perfil de egresado</h1>
        <section className={css.egresadoTableContainer}>
          {egresadoProps?.[0]
            ? <SimpleDataObjectTable dataObject={{
              Nombre: egresadoProps?.[0].Nom_egresado,
              Apellido: egresadoProps?.[0].Ape_egresado,
              'Tipo de documento': egresadoProps?.[0].Tipo_documento,
              'Fecha de nacimiento': formatDate({ date: egresadoProps?.[0].Fecha_nacimiento }),
              Género: egresadoProps?.[0].Genero,
              'Grupo étnico': egresadoProps?.[0].Grupo_etnico,
              'Correo electrónico': egresadoProps?.[0].Correo_egresado,
              Celular: egresadoProps?.[0].Celular_egresado,
              'Dirección de contacto': egresadoProps?.[0].Direccion_contacto,
              'País del egresado': egresadoProps?.[0].Pais_egresado
            }}
              />
            : null}
        </section>
        <div className={css.editDataLinkContainer}>
          <a href='/editar-mi-perfil-de-egresado' className={css.editDataLink}>Editar mis datos</a>
        </div>
        {historiaAcademicaUnal?.[0]
          ? <h2 className={css.subtitle}>Historial académico de la UNAL</h2>
          : null}
        <section className={css.egresadoAHContainer}>
          {historiaAcademicaUnal?.[0]
            ? historiaAcademicaUnal.map(obj => (
              <div key={obj.Id_historia_UNAL}>
                <SimpleDataObjectTable dataObject={{
                  'Nombre del programa': obj.Nom_programa_UNAL,
                  'Tipo del programa': obj.Tipo_programa,
                  'Nombre de la facultad': obj.Nombre_facultad_UNAL,
                  'Nota final': obj.Nota_final,
                  'Fecha de grado': obj['IF(Fecha_grado IS NULL,"Actualidad",Fecha_grado)']
                }}
                />
              </div>
            ))
            : null}
        </section>

        {historiaAcademicaExterna?.[0]
          ? <h2 className={css.subtitle}>Historial académico de universidades externas</h2>
          : null}
        <section className={css.egresadoAHContainer}>
          {historiaAcademicaExterna?.[0]
            ? historiaAcademicaExterna.map(obj => (
              <div key={obj.Id_historia_externa}>
                <SimpleDataObjectTable dataObject={{
                  'Nombre del programa': obj.Nombre_programa_externo,
                  'Tipo del programa': obj.Tipo_programa,
                  'Nombre de la institución educativa': obj.Nombre_inst_edu,
                  'Nombre de la facultad': obj.Nombre_facultad_externa,
                  'Nota final': obj.Nota_final,
                  'Fecha de grado': obj['IF(Fecha_grado IS NULL,"Actualidad",Fecha_grado)']
                }}
                />
              </div>
            ))
            : null}
        </section>

        {documentosInvestigacion?.[0]
          ? <h2 className={css.subtitle}>Documentos de investigación</h2>
          : null}
        <section className={css.egresadoDIContainer}>
          {documentosInvestigacion?.[0]
            ? documentosInvestigacion.map(obj => (
              <div key={obj.Id_documento_investigacion}>
                <SimpleDataObjectTable dataObject={{
                  Título: obj.Titulo,
                  'Fecha de publicación': formatDate({ date: obj.Fecha_Publicacion })

                }}
                />
              </div>
            ))
            : null}
        </section>

        {historialLaboral?.[0]
          ? <h2 className={css.subtitle}>Historial laboral</h2>
          : null}
        <section className={css.egresadoHLContainer}>
          {historialLaboral?.[0]
            ? historialLaboral.map(obj => (
              <div key={obj.Id_trabajo}>
                <SimpleDataObjectTable dataObject={{
                  'Cargo del trabajo': obj.Cargo_trabajo,
                  Nom_empresa: obj.Nom_empresa,
                  'NIT de la empresa': obj.Nit_empresa,
                  'Actividad económica principal': obj.Actividad_economica_principal,
                  'Fecha de salida': obj['IF(Fecha_salida IS NULL,"Actualidad",Fecha_salida)']
                }}
                />
              </div>
            ))
            : null}
        </section>
      </main>
    </>
  )
}
export default MyProfileEgresado
