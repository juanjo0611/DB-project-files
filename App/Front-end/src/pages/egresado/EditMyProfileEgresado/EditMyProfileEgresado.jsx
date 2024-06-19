import { useNavigate } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'
import { useEgresadoInfo } from '../../../hooks/egresado/useEgresadoInfo'
import css from './EditMyProfileEgresado.module.css'
import { useContext, useEffect } from 'react'
import { WhoContext } from '../../../Routes'
import { ROLES } from '../../../globalVariables/Data'
import Swal from 'sweetalert2'
import { stringIsNumber } from '../../../utilities/stringIsNumber'

const EditMyProfileEgresado = () => {
  const { egresadoProps, updateEgresado } = useEgresadoInfo({ byId: false })
  const { who } = useContext(WhoContext)
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role !== ROLES.EGRESADO) {
      navigate('/login')
    }
  }, [who.role])

  const editEgresado = async event => {
    event.preventDefault()
    const formData = new FormData(event.target)

    const data = {
      name: formData.get('nombre'),
      apellido: formData.get('apellido'),
      genero: formData.get('genero'),
      grupoEtnico: formData.get('grupoEtnico'),
      celular: formData.get('celular'),
      direccionContacto: formData.get('direccionContacto'),
      pais: formData.get('pais')
    }
    if (data.name === '' || data.apellido === '' || data.celular === '') {
      return Swal.fire({
        title: 'Los campos nombre, apellido ni celular pueden estar vacíos',
        icon: 'warning'
      })
    }

    if (!stringIsNumber(data.celular) || data.celular.length > 10) {
      return Swal.fire({
        title: 'El número de celular que ingresaste no es válido',
        icon: 'warning'
      })
    }

    const { msg } = await updateEgresado(data)
    if (msg === 'success') {
      Swal.fire({
        title: 'Se ha actualizado la información correctamente',
        icon: 'success',
        showConfirmButton: false,
        timer: 900
      })
      setTimeout(() => {
        navigate('/ver-mi-perfil-de-egresado')
      }, 900)
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
        <div className={css.cancelAndBackBtnContainer_1}>
          <a href='/ver-mi-perfil-de-egresado' className={css.cancelAndBackBtn}>Descartar cambios y salir</a>
        </div>
        <h1 className={css.title}>Editar mi perfil de egresado</h1>
        <form className={css.formUpdate} onSubmit={event => editEgresado(event)}>
          <div className={css.dataFieldContainer}>
            <label>Nombre</label>
            <input type='text' name='nombre' defaultValue={egresadoProps?.[0]?.Nom_egresado} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Apellido</label>
            <input type='text' name='apellido' defaultValue={egresadoProps?.[0]?.Ape_egresado} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Género</label>
            <input type='text' name='genero' defaultValue={egresadoProps?.[0]?.Genero} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Grupo étnico</label>
            <input type='text' name='grupoEtnico' defaultValue={egresadoProps?.[0]?.Grupo_etnico} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Celular_egresado</label>
            <input type='number' name='celular' defaultValue={egresadoProps?.[0]?.Celular_egresado} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Dirección de contacto</label>
            <input type='text' name='direccionContacto' defaultValue={egresadoProps?.[0]?.Direccion_contacto} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>País de residencia</label>
            <input type='text' name='pais' defaultValue={egresadoProps?.[0]?.Pais_egresado} />
          </div>
          <button type='submit' className={css.submitBtn}>Confirmar y salir</button>
          <a href='/ver-mi-perfil-de-egresado' className={css.cancelAndBackBtn}>Descartar cambios y salir</a>
        </form>
      </main>
    </>
  )
}
export default EditMyProfileEgresado
