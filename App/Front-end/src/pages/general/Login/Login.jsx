import { useContext, useEffect, useState } from 'react'
import Header from '../../../components/global/Header/Header'
import { ROLES } from '../../../globalVariables/Data'
import css from './Login.module.css'
import Swal from 'sweetalert2'
import { POST } from '../../../CRUD/POST'
import { useNavigate } from 'react-router-dom'
import { WhoContext } from '../../../Routes'
import { stringIsNumber } from '../../../utilities/stringIsNumber'

const Login = () => {
  const [selectedRole, setSelectedRole] = useState(ROLES.EGRESADO)
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

  const changeRole = event => {
    setSelectedRole(event.target.value)
  }

  const loginEgresado = async ({ dni, password }) => {
    if (!stringIsNumber(dni)) {
      return Swal.fire({
        title: 'El campo número de documento debe ser numérico',
        icon: 'error'
      })
    }
    const response = await POST({
      resource: '/auth/login-egresado',
      body: {
        dni: parseInt(dni),
        password
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
    } else {
      Swal.fire({
        icon: 'warning',
        title: 'Credenciales incorrectas'
      })
    }
  }
  const loginEmpresa = async ({ nit, password }) => {
    if (!stringIsNumber(nit)) {
      return Swal.fire({
        title: 'El campo NIT debe ser numérico',
        icon: 'error'
      })
    }
    const response = await POST({
      resource: '/auth/login-empresa',
      body: {
        nit: parseInt(nit),
        password
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
    } else {
      Swal.fire({
        icon: 'warning',
        title: 'Credenciales incorrectas'
      })
    }
  }

  const loginAdministrativo = async ({ user, password }) => {
    const response = await POST({
      resource: '/auth/login-administrativo',
      body: {
        user,
        password
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
    } else {
      Swal.fire({
        icon: 'warning',
        title: 'Credenciales incorrectas'
      })
    }
  }

  const login = event => {
    event.preventDefault()
    const formData = new FormData(event.target)
    const identifier = formData.get('identifier')
    const password = formData.get('password')

    if (identifier === '' || password === '') {
      return Swal.fire({
        title: 'Llena todos los campos antes de continuar',
        icon: 'error'
      })
    }

    if (selectedRole === ROLES.EGRESADO) loginEgresado({ dni: identifier, password })
    if (selectedRole === ROLES.EMPRESA) loginEmpresa({ nit: identifier, password })
    if (selectedRole === ROLES.ADMINISTRATIVO) loginAdministrativo({ user: identifier, password })
  }

  return (
    <>
      <Header />
      <main className={css.main}>
        <section className={css.loginCard}>
          <h2 className={css.loginCard__title}>
            Acceder como
          </h2>
          <form onChange={changeRole} className={css.loginCard__formRole}>
            <div>
              <input type='radio' name='role' value={ROLES.EGRESADO} defaultChecked />
              <label>Egresado</label>
            </div>
            <div>
              <input type='radio' name='role' value={ROLES.EMPRESA} />
              <label>Cuenta de empresa</label>
            </div>
            <div>
              <input type='radio' name='role' value={ROLES.ADMINISTRATIVO} />
              <label>Administrativo</label>
            </div>
          </form>
          <form className={css.loginCard__formLogin} onSubmit={event => login(event)}>
            <div>
              {selectedRole === ROLES.EGRESADO ? <label>Número de documento</label> : null}
              {selectedRole === ROLES.EMPRESA ? <label>NIT</label> : null}
              {selectedRole === ROLES.ADMINISTRATIVO ? <label>Usuario</label> : null}
              <input type='text' name='identifier' className={css.loginCard__formLogin__input} />
            </div>
            <div>
              <label>Contraseña</label>
              <input type='text' name='password' className={css.loginCard__formLogin__input} />
            </div>
            <div className={css.loginCard__formLogin__submitContainer}>
              <input type='submit' className={css.loginCard__formLogin__submitButton} />
            </div>
          </form>
        </section>
      </main>
    </>
  )
}
export default Login
