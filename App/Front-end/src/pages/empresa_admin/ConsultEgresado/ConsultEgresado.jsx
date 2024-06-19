import { useNavigate, useParams } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'
import css from './ConsultEgresado.module.css'
import ConsultsForm from '../../../components/global/ConsultsForm/ConsultsForm'
import SimpleDataObjectTable from '../../../components/shared/SimpleDataObjectTable/SimpleDataObjectTable'
import { useEgresadoInfo } from '../../../hooks/egresado/useEgresadoInfo'
import { formatDate } from '../../../utilities/formatDate'
import { useEgresadoHistoriaAcademicaUnal } from '../../../hooks/egresado/useEgresadoHistoriaAcademicaUnal'
import { useEgresadoHistoriaAcademicaExterna } from '../../../hooks/egresado/useEgresadoHistoriaAcademicaExterna'
import { useEgresadoDocumentosInvestigacion } from '../../../hooks/egresado/useEgresadoDocumentosInvestigacion'
import { useEgresadoHistorialLaboral } from '../../../hooks/egresado/useEgresadoHistorialLaboral'

const ConsultEgresado = () => {
  const navigate = useNavigate()
  const { id } = useParams()
  const { egresadoProps } = useEgresadoInfo({ byId: true, id })
  const { historiaAcademicaUnal } = useEgresadoHistoriaAcademicaUnal({ byId: true, id })
  const { historiaAcademicaExterna } = useEgresadoHistoriaAcademicaExterna({ byId: true, id })
  const { documentosInvestigacion } = useEgresadoDocumentosInvestigacion({ byId: true, id })
  const { historialLaboral } = useEgresadoHistorialLaboral({ byId: true, id })

  const consult = nit => {
    const url = '/consultar-egresado/' + nit
    navigate(url)
  }

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Consulta la información de un egresado</h1>
        <div className={css.formContainer}>
          <ConsultsForm
            title='Ingresa el NIT'
            placeholder='NIT'
            btnText='Consultar'
            callback={consult}
          />
        </div>
        <section className={css.egresadoTableContainer}>
          {egresadoProps?.[0]
            ? <SimpleDataObjectTable dataObject={{
              'Documento de identidad': egresadoProps?.[0].Id_egresado,
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
            : <h2>No hay ningún egresado con el DNI {id}</h2>}
        </section>
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
export default ConsultEgresado
