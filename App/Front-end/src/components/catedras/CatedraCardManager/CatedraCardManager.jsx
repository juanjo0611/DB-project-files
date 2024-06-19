import Swal from 'sweetalert2'
import css from './CatedraCardManager.module.css'

const CatedraCardManager = ({ name, initDate, endDate, id, delCallback }) => {
  const urlSeeMore = 'ver-catedra-especifica/' + id

  const handleClick = () => {
    Swal.fire({
      title: '¿Seguro quieres eliminar esta cátedra?, se borrarán también las relaciones con los egresados coordinadores',
      text: 'Esta operación es irreversible!',
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '¡Sí, borrar!'
    }).then((result) => {
      if (result.isConfirmed) {
        delCallback(id)
      }
    })
  }

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
        <button className={css.buttonDelete} onClick={() => handleClick()}>Borrar</button>
      </div>
    </div>
  )
}
export default CatedraCardManager
