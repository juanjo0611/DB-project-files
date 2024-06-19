import { useNavigate } from 'react-router-dom'
import CatedraCardManager from '../../../components/catedras/CatedraCardManager/CatedraCardManager'
import Header from '../../../components/global/Header/Header'
import { useOwnCatedras } from '../../../hooks/catedra/useOwnCatedras'
import { getOnlyDate } from '../../../utilities/formatDate'
import css from './CatedrasManager.module.css'
import { useContext, useEffect } from 'react'
import { ROLES } from '../../../globalVariables/Data'
import { WhoContext } from '../../../Routes'
import Swal from 'sweetalert2'

const CatedrasManager = () => {
  const { who } = useContext(WhoContext)
  const { catedras, deleteCatedra } = useOwnCatedras()
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role !== ROLES.ADMINISTRATIVO) {
      navigate('/')
    }
  }, [who.role])

  const delCatedra = async (id) => {
    let response
    try {
      response = await deleteCatedra(id)
    } catch (error) {
      console.log(error)
    }
    if (response.msg === 'success') {
      Swal.fire({
        title: 'Se ha borrado exitosamente',
        icon: 'success'
      })
    } else {
      Swal.fire({
        title: 'Algo ha salido mal',
        icon: 'error'
      })
    }
  }

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Mis cátedras</h1>
        <section className={css.catedrasContainer}>
          {catedras?.[0]
            ? catedras.map(catedra => (
              <div key={catedra.Id_catedra} className={css.catedraCardContainer}>
                <CatedraCardManager
                  id={catedra.Id_catedra}
                  name={catedra.Nombre_catedra}
                  initDate={getOnlyDate(catedra.Fecha_inicio)}
                  endDate={getOnlyDate(catedra.Fecha_final)}
                  delCallback={(id) => delCatedra(id)}
                />
              </div>
            ))
            : null}
        </section>
        <div className={css.createButtonContainer}>
          <a href='/crear-catedra' className={css.cancelAndBackBtn}>Añadir una cátedra</a>
        </div>
      </main>
    </>
  )
}
export default CatedrasManager
