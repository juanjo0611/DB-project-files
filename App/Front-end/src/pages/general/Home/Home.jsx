import Header from '../../../components/global/Header/Header'
import css from './Home.module.css'

const Home = () => {
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
        </div>
      </main>
    </>
  )
}
export default Home
