import { useContext, useEffect } from 'react'
import Header from '../../../components/global/Header/Header'
import { useNavigate } from 'react-router-dom'
import { WhoContext } from '../../../Routes'
import { ROLES } from '../../../globalVariables/Data'
import Swal from 'sweetalert2'
import { POST } from '../../../CRUD/POST'
import { stringIsNumber } from '../../../utilities/stringIsNumber'
import css from './RegisterEmpresa.module.css'

const RegisterEmpresa = () => {
  const { who } = useContext(WhoContext)
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role === ROLES.EGRESADO) {
      navigate('/ver-mi-perfil-de-egresado')
    }
    if (who.role !== undefined && who.role === ROLES.EMPRESA) {
      navigate('/ver-mi-perfil-de-empresa')
    }
    if (who.role !== undefined && who.role === ROLES.ADMINISTRATIVO) {
      navigate('/')
    }
  }, [who.role])

  const registerEmpresa = async ({ data }) => {
    let responseInRegister
    try {
      console.log('IDDD:', data.identifier)
      await POST({
        resource: '/empresa/post-new-empresa',
        body: {
          Nit_empresa: data.identifier,
          Password_empresa: data.password,
          Nom_empresa: data.nombre,
          Actividad_economica_principal: data.actividad,
          Nombre_gerente: data.nombreGerente,
          Pais_empresa: data.pais,
          Ciudad_empresa: data.ciudad,
          Direccion_empresa: data.direccion,
          Descripcion: data.descripcion
        }
      })
      responseInRegister = 'success'
    } catch (error) {
      Swal({
        title: 'Ocurrió un error al registrar la empresa, es posible que el NIT ya se encuentre registrado',
        icon: 'error'
      })
    }

    if (responseInRegister === 'success') {
      Swal.fire({
        title: 'Registro exitoso',
        icon: 'success',
        showConfirmButton: false,
        timer: 900
      })
      try {
        const response = await POST({
          resource: '/auth/login-empresa',
          body: {
            nit: data.identifier,
            password: data.password
          }
        })
        if (response?.token) {
          Swal.fire({
            icon: 'success',
            title: 'Iniciando sesión',
            showConfirmButton: false,
            timer: 900
          })
          window.localStorage.setItem('token', response.token)
          setTimeout(() => window.location.reload(), 900)
        }
      } catch (error) {
        console.log(error)
      }
    }
  }

  const register = event => {
    event.preventDefault()
    const formData = new FormData(event.target)
    const data = {
      identifier: formData.get('nit'),
      password: formData.get('password'),
      nombre: formData.get('nombre'),
      actividad: formData.get('actividad'),
      nombreGerente: formData.get('nombreGerente'),
      pais: formData.get('pais'),
      ciudad: formData.get('ciudad'),
      direccion: formData.get('direccion'),
      descripcion: formData.get('descripcion')
    }

    if ([data.identifier, data.password, data.nombre, data.pais, data.descripcion].includes('')) {
      return Swal.fire({
        title: 'Los campos (NIT, Contraseña, nombre de la empresa, país de la empresa, descripción) no pueden estar vacíos',
        icon: 'error'
      })
    }
    if (!stringIsNumber(data.identifier)) {
      return Swal.fire({
        title: 'El campo NIT debe ser numérico',
        icon: 'error'
      })
    }
    data.identifier = parseInt(data.identifier)
    registerEmpresa({ data })
  }

  return (
    <>
      <Header />
      <main className={css.main}>
        <section className={css.loginCard}>
          <h2 className={css.loginCard__title}>
            Registrarse como empresa
          </h2>
          <span className={css.initialInfoSpan}>Los campos marcados con * son obligatorios</span>
          <form className={css.loginCard__formLogin} onSubmit={event => register(event)}>
            <div>
              <label>NIT <span className={css.asterisk}>*</span></label>
              <input type='number' name='nit' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Contraseña <span className={css.asterisk}>*</span></label>
              <input type='text' name='password' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Nombre de la empresa <span className={css.asterisk}>*</span></label>
              <input type='text' name='nombre' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Actividad económica principal</label>
              <input type='text' name='actividad' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Nombre del gerente</label>
              <input type='text' name='nombreGerente' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>País de la empresa <span className={css.asterisk}>*</span></label>
              <input type='text' name='pais' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Ciudad de la empresa</label>
              <input type='text' name='ciudad' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Dirección de la empresa</label>
              <input type='text' name='direccion' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Descripción <span className={css.asterisk}>*</span></label>
              <textarea type='text' name='descripcion' className={css.loginCard__formLogin__textarea} />
            </div>
            <div className={css.loginCard__formLogin__submitContainer}>
              <input type='submit' className={css.loginCard__formLogin__submitButton} value='Registrarse' />
            </div>
          </form>
        </section>
      </main>
    </>
  )
}
export default RegisterEmpresa
