import { useState } from 'react'
import Header from '../../../components/global/Header/Header'
import { ROLES } from '../../../globalVariables/Data'
import css from './Login.module.css'

const Login = () => {
  const [selectedRole, setSelectedRole] = useState(ROLES.EGRESADO)

  const changeRole = event => {
    setSelectedRole(event.target.value)
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
              <input type='radio' name='role' value={ROLES.EMPRESA} />
              <label>Cuenta de empresa</label>
            </div>
            <div>
              <input type='radio' name='role' value={ROLES.EGRESADO} defaultChecked />
              <label>Egresado</label>
            </div>
            <div>
              <input type='radio' name='role' value={ROLES.ADMINISTRATIVO} />
              <label>Administrativo</label>
            </div>
          </form>

          {selectedRole === ROLES.EMPRESA
            ? (
              <form className={css.loginCard__formLogin}>
                <div>
                  <label>NIT</label>
                  <input type='text' className={css.loginCard__formLogin__input} />
                </div>
                <div>
                  <label>Contraseña</label>
                  <input type='text' className={css.loginCard__formLogin__input} />
                </div>
                <div className={css.loginCard__formLogin__submitContainer}>
                  <input type='submit' className={css.loginCard__formLogin__submitButton} />
                </div>
              </form>
              )
            : null}
          {selectedRole === ROLES.EGRESADO
            ? (
              <form className={css.loginCard__formLogin}>
                <div>
                  <label>Número de documento</label>
                  <input type='text' className={css.loginCard__formLogin__input} />
                </div>
                <div>
                  <label>Contraseña</label>
                  <input type='text' className={css.loginCard__formLogin__input} />
                </div>
                <div className={css.loginCard__formLogin__submitContainer}>
                  <input type='submit' className={css.loginCard__formLogin__submitButton} />
                </div>
              </form>
              )
            : null}
          {selectedRole === ROLES.ADMINISTRATIVO
            ? (
              <form className={css.loginCard__formLogin}>
                <div>
                  <label>Usuario</label>
                  <input type='text' className={css.loginCard__formLogin__input} />
                </div>
                <div>
                  <label>Contraseña</label>
                  <input type='text' className={css.loginCard__formLogin__input} />
                </div>
                <div className={css.loginCard__formLogin__submitContainer}>
                  <input type='submit' className={css.loginCard__formLogin__submitButton} />
                </div>
              </form>
              )
            : null}
        </section>
      </main>
    </>
  )
}
export default Login
