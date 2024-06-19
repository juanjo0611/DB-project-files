import Header from '../../../components/global/Header/Header'
import css from './ReadCatedras.module.css'
import CatedraCard from '../../../components/catedras/CatedraCard/CatedraCard'
import { usePublicCatedras } from '../../../hooks/catedra/usePublicCatedras'
import { getOnlyDate } from '../../../utilities/formatDate'

const ReadCatedras = () => {
  const { catedras } = usePublicCatedras()

  console.log(catedras)

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Cátedras</h1>
        <section className={css.sectionCatedrasContainer}>
          {catedras?.[0]
            ? catedras.map(catedra => (
              <div key={catedra.Id_catedra} className={css.catedraCardContainer}>
                <CatedraCard
                  id={catedra.Id_catedra}
                  name={catedra.Nombre_catedra}
                  initDate={getOnlyDate(catedra.Fecha_inicio)}
                  endDate={getOnlyDate(catedra.Fecha_final)}
                />
              </div>
            ))
            : null}
        </section>
      </main>
    </>
  )
}
export default ReadCatedras
