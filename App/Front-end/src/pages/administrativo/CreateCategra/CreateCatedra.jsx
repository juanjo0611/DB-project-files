import { useNavigate } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'
import css from './CreateCatedra.module.css'
import { useContext, useEffect } from 'react'
import { WhoContext } from '../../../Routes'
import { ROLES } from '../../../globalVariables/Data'
import Swal from 'sweetalert2'
import { stringIsNumber } from '../../../utilities/stringIsNumber'
import { POST } from '../../../CRUD/POST'

const CreateCatedra = () => {
  const { who } = useContext(WhoContext)
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role !== ROLES.ADMINISTRATIVO) {
      navigate('/')
    }
  }, [who.role])

  const addCatedra = async ({ data }) => {
    data.Egresados_coordinadores = JSON.stringify(data.Egresados_coordinadores)
    data.Id_facultad = parseInt(data.Id_facultad)
    try {
      await POST({
        resource: '/catedra/post-new-catedra',
        body: data
      })
      Swal.fire({
        title: 'Se creó correctamente',
        icon: 'success'
      })
    } catch (error) {
      console.log(error)
      Swal.fire({
        title: 'Algo salió mal',
        icon: 'error'
      })
    }
  }

  const handleSubmit = event => {
    event.preventDefault()
    const formData = new FormData(event.target)
    const data = {
      Nombre_catedra: formData.get('nombre'),
      Docente_coordinador: formData.get('docente'),
      Descripcion: formData.get('descripcion'),
      Modalidad: formData.get('modalidad'),
      Fecha_inicio: formData.get('initDate'),
      Fecha_final: formData.get('finalDate'),
      Hora_inicio: formData.get('initTime'),
      Hora_final: formData.get('finalTime'),
      Id_facultad: formData.get('idFac'),
      Egresados_coordinadores: formData.get('coordinadores')
    }

    data.Egresados_coordinadores = data.Egresados_coordinadores.split(' ')

    if ([
      data.Nombre_catedra,
      data.Docente_coordinador,
      data.Descripcion,
      data.Modalidad,
      data.Fecha_inicio,
      data.Fecha_final,
      data.Hora_inicio,
      data.Hora_final,
      data.Id_facultad,
      data.Egresados_coordinadores
    ].includes('')) {
      return Swal.fire({
        title: 'Ningún campo puede estar vacío',
        icon: 'warning'
      })
    }
    let nums = true
    if (!stringIsNumber(data.Id_facultad)) nums = false

    for (const e of data.Egresados_coordinadores) {
      if (!stringIsNumber(e)) {
        nums = false
      }
    }
    if (!nums) {
      return Swal.fire({
        title: 'El Id de la facultad y los DNI de los egresados coordinadores deben ser numéricos',
        icon: 'warning'
      })
    }
    for (let i = 0; i < data.Egresados_coordinadores.length; ++i) {
      data.Egresados_coordinadores[i] = parseInt(data.Egresados_coordinadores[i])
    }
    addCatedra({ data })
  }

  return (
    <>
      <Header />
      <main>
        <div className={css.cancelAndBackBtnContainer_1}>
          <a href='/mis-catedras-manager' className={css.cancelAndBackBtn}>Volver a las cátedras</a>
        </div>
        <h1 className={css.title}>Añade una cátedra</h1>
        <form className={css.formUpdate} onSubmit={event => handleSubmit(event)}>
          <div className={css.dataFieldContainer}>
            <label>Nombre de la cátedra</label>
            <input type='text' name='nombre' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Docente coordinador</label>
            <input type='text' name='docente' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Descripción</label>
            <textarea type='text' name='descripcion' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Modalidad</label>
            <select name='modalidad'>
              <option value='Presencial'>Presencial</option>
              <option value='Virtual'>Virtual</option>
            </select>
          </div>
          <div className={css.dataFieldContainer}>
            <label>Fecha de inicio</label>
            <input type='date' name='initDate' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Fecha de finalización</label>
            <input type='date' name='finalDate' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Hora de inicio</label>
            <input type='time' name='initTime' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Hora de finalización</label>
            <input type='time' name='finalTime' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Id de la facultad</label>
            <input type='text' name='idFac' />
          </div>
          <div className={css.dataFieldContainer}>
            <label>documentos de identidad de los egresados coordinadores separados por espacios</label>
            <input type='text' name='coordinadores' />
          </div>
          <button type='submit' className={css.submitBtn}>Añadir cátedra</button>
          <a href='/ver-mi-perfil-de-egresado' className={css.cancelAndBackBtn}>Descartar cambios y salir</a>
        </form>
      </main>
    </>
  )
}
export default CreateCatedra
