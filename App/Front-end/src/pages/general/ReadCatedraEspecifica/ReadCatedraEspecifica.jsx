import { useParams } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'
import { usePublicInfoCatedra } from '../../../hooks/catedra/usePublicInfoCatedra'
import css from './ReadCatedraEspecifica.module.css'
import SimpleDataObjectTable from '../../../components/shared/SimpleDataObjectTable/SimpleDataObjectTable'
import { getOnlyDate } from '../../../utilities/formatDate'
import { useEgresadosCoordinadores } from '../../../hooks/catedra/useEgresadosCoordinadores'

const ReadCatedraEspecifica = () => {
  const { id } = useParams()
  const { catedra } = usePublicInfoCatedra({ id })
  const { egresadosCoordinadores } = useEgresadosCoordinadores({ id })

  console.log(egresadosCoordinadores)

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Información de la Cátedra</h1>
        <section className={css.sectionTableContainer}>
          {catedra?.[0]
            ? <SimpleDataObjectTable dataObject={{
              Nombre: catedra?.[0]?.Nombre_catedra,
              'Nombre del docente coordinador': catedra?.[0]?.Nombre_docente_coordinador,
              Facultad: catedra?.[0]?.Nombre_facultad_UNAL,
              Modalidad: catedra?.[0]?.Modalidad,
              'Fecha de inicio': getOnlyDate(catedra?.[0]?.Fecha_inicio),
              'Fecha de finalización': getOnlyDate(catedra?.[0]?.Fecha_final),
              'Hora de inicio': catedra?.[0].Hora_inicio,
              'Hora final': catedra?.[0]?.Hora_final,
              Descripción: catedra?.[0]?.Descripcion_catedra
            }}
              />
            : <h2>La cátedra con el id {id} no existe</h2>}
        </section>
        <h2 className={css.subtitle}>Egresados coordinadores: {egresadosCoordinadores.length}</h2>
        <section className={css.sectionTablesContainer}>
          {egresadosCoordinadores?.[0]
            ? (egresadosCoordinadores.map(egresado => (
              <div key={egresado.Id_egresado}>
                <SimpleDataObjectTable dataObject={{
                  DNI: egresado?.Id_egresado,
                  Nombre: egresado?.Nom_egresado,
                  Apellido: egresado?.Ape_egresado
                }}
                />
              </div>
              )))
            : <h2>La cátedra con el id {id} no existe</h2>}
        </section>
      </main>
    </>
  )
}
export default ReadCatedraEspecifica
