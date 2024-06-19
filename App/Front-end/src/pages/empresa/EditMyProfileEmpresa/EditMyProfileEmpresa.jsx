import { useNavigate } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'
import css from './EditMyProfileEmpresa.module.css'
import { useContext, useEffect } from 'react'
import { ROLES } from '../../../globalVariables/Data'
import { WhoContext } from '../../../Routes'
import { useEmpresaInfo } from '../../../hooks/empresa/useEmpresaInfo'
import Swal from 'sweetalert2'

const EditMyProfileEmpresa = () => {
  const { empresaProps, updateEmpresa } = useEmpresaInfo({ byId: false })
  const { who } = useContext(WhoContext)
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role !== ROLES.EMPRESA) {
      navigate('/login')
    }
  }, [who.role])

  const editEmpresa = async (event) => {
    event.preventDefault()
    const formData = new FormData(event.target)

    const data = {
      name: formData.get('nombre'),
      actividadEconomica: formData.get('actividad'),
      nombreGerente: formData.get('gerente'),
      ciudad: formData.get('ciudad'),
      direccion: formData.get('direccion'),
      descripcion: formData.get('descripcion')
    }

    // Check Nombre, Descripcion
    if (data.name === '' || data.descripcion === '') {
      return Swal.fire({
        title: 'Los campos nombre ni descripción debeb pueden estar vacíos',
        icon: 'warning'
      })
    }

    const { msg } = await updateEmpresa(data)
    if (msg === 'success') {
      Swal.fire({
        title: 'Se ha actualizado la información correctamente',
        icon: 'success',
        showConfirmButton: false,
        timer: 900
      })
      setTimeout(() => {
        navigate('/ver-mi-perfil-de-empresa')
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
      <main className={css.main}>
        <div className={css.cancelAndBackBtnContainer_1}>
          <a href='/ver-mi-perfil-de-egresado' className={css.cancelAndBackBtn}>Descartar cambios y salir</a>
        </div>
        <h1 className={css.title}>Editar mi perfil de empresa</h1>
        <form className={css.formUpdate} onSubmit={event => editEmpresa(event)}>
          <div className={css.dataFieldContainer}>
            <label>Nombre de la empresa</label>
            <input type='text' name='nombre' defaultValue={empresaProps?.[0]?.Nom_Empresa} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Actividad económica principal</label>
            <input type='text' name='actividad' defaultValue={empresaProps?.[0]?.Actividad_economica_principal} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Nombre del gerente</label>
            <input type='text' name='gerente' defaultValue={empresaProps?.[0]?.Nombre_gerente} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Ciudad de la empresa</label>
            <input type='text' name='ciudad' defaultValue={empresaProps?.[0]?.Ciudad_empresa} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Dirección de la empresa</label>
            <input type='text' name='direccion' defaultValue={empresaProps?.[0]?.Direccion_empresa} />
          </div>
          <div className={css.dataFieldContainer}>
            <label>Descripción</label>
            <textarea name='descripcion' defaultValue={empresaProps?.[0]?.Descripcion} />
          </div>
          <button type='submit' className={css.submitBtn}>Confirmar y salir</button>
          <a href='/ver-mi-perfil-de-egresado' className={css.cancelAndBackBtn}>Descartar cambios y salir</a>
        </form>

      </main>
    </>
  )
}
export default EditMyProfileEmpresa
