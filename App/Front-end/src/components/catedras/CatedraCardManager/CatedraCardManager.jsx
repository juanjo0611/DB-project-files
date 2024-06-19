import css from './CatedraCardManager.module.css'

const CatedraCardManager = ({ name, initDate, endDate, id, delCallback }) => {
  const urlSeeMore = 'ver-catedra-especifica/' + id

  return (
    <div className={css.catedraCard}>
      <div className={css.divName}>
        <span className={css.spanName}>{name}</span>
      </div>
      <div className={css.divInitDate}>
        <span className={css.spanTitleInitDate}>Fecha de inicio</span>
        <span className={css.spanInitDate}>{initDate}</span>
      </div>
      <div className={css.divEndDate}>
        <span className={css.spanTitleEndDate}>Fecha de finalización</span>
        <span className={css.spanEndDate}>{endDate}</span>
      </div>
      <div className={css.divButton}>
        <a href={urlSeeMore} className={css.aSeeMore}>Ver más</a>
        <button className={css.buttonDelete} onClick={() => delCallback(id)}>Borrar</button>
      </div>
    </div>
  )
}
export default CatedraCardManager
