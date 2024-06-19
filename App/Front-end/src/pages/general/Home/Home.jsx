import { useContext } from 'react'
import Header from '../../../components/global/Header/Header'
import css from './Home.module.css'
import { WhoContext } from '../../../Routes'
import { ROLES } from '../../../globalVariables/Data'

const Home = () => {
  const { who } = useContext(WhoContext)
  return (
    <>
      <Header />
      <main className={css.main}>
        <h1 className={css.home__title}>SCE</h1>
        <p className={css.home__p1}>Sistema de consulta de egresados</p>
        <p className={css.home__p2}>¿Qué quieres hacer?</p>
        <div className={css.homeLinksContainer}>
          <a
            href='/ver-convocatorias'
            className={`${css.homeLink} ${css.homeLink_verConvocatorias}`}
          >Ver convocatorias
          </a>
          <a
            href='/ver-catedras'
            className={`${css.homeLink} ${css.homeLink_verCatedras}`}
          >Ver cátedras
          </a>
          <a
            href='/seccion-egresados'
            className={`${css.homeLink} ${css.homeLink_seccionEgresados}`}
          >Ver sección de egresados
          </a>
          <a
            href='/consultar-empresa'
            className={`${css.homeLink} ${css.homeLink_consultarEmpresa}`}
          >Consultar empresa
          </a>
          {who.role === ROLES.EMPRESA || who.role === ROLES.ADMINISTRATIVO
            ? (
              <a
                href='/consultar-egresado'
                className={`${css.homeLink} ${css.homeLink_consultarEgresado}`}
              >Consultar egresado
              </a>)
            : null}

        </div>
      </main>
    </>
  )
}
export default Home
