import Header from '../../../components/global/Header/Header'
import DoubleDataObjectTable from '../../../components/shared/DoubleDataObjectTable/DoubleDataObjectTable'
import SimpleDataObjectTable from '../../../components/shared/SimpleDataObjectTable/SimpleDataObjectTable'
import { useDocumentosByFacultad } from '../../../hooks/views/useDocumentosByFacultad'
import { useEgresadosByPais } from '../../../hooks/views/useEgresadosByPais'
import { useInfoByPrograma } from '../../../hooks/views/useInfoByPrograma'
import css from './ReadSeccionEgresados.module.css'

const ReadSeccionEgresados = () => {
  const { egresadosByPais } = useEgresadosByPais()
  const { infoByPrograma } = useInfoByPrograma()
  const { documentosByFacultad } = useDocumentosByFacultad()

  // console.log(egresadosByPais)
  console.log(infoByPrograma)
  // console.log(documentosByFacultad)

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Bienvenido a la sección de egresados</h1>
        <p className={css.subtitle}>Acá encontrarás métricas interesantes de los egresados</p>
        <section className={css.tablesContainer}>
          <div className={css.itemWrapper}>
            <span>Número de egresados que han trabajado en empresas de diversos paises</span>
            <SimpleDataObjectTable
              dataObject={egresadosByPais}
              leftHeader='País'
              rightHeader='Cantidad'
            />
          </div>
          <div className={css.itemWrapper}>
            <span>Información de los programas educativos (Carreras)</span>
            <DoubleDataObjectTable
              dataObject={infoByPrograma}
              leftHeader='Programa educativo'
              midHeader='Número de egresados'
              rightHeader='Nota promedio'
            />
          </div>
          <div className={css.itemWrapper}>
            <span>Número de documentos de investigación por facultad</span>
            <SimpleDataObjectTable
              dataObject={documentosByFacultad}
              leftHeader='Facultad'
              rightHeader='Documentos'
            />
          </div>
        </section>

      </main>
    </>
  )
}
export default ReadSeccionEgresados
