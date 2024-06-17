import { useContext } from 'react'
import { ROLES } from '../../../globalVariables/Data'
import css from './HeaderComponents.module.css'
import { WhoContext } from '../../../Routes'

export const HomeLinkItem = () => {
  return (
    <li className={css.Header__li}>
      <a href='/' className={css.Header__a}>
        Home
      </a>
    </li>
  )
}

export const RegisterAsCompanyLinkItem = () => {
  const { role } = useContext(WhoContext)

  const element = (
    <li>
      <a href='/register-empresa' className={css.Header__a}>
        Registrarse como empresa
      </a>
    </li>
  )
  return (
    <>
      {role === ROLES.GENERAL
        ? element
        : null}
    </>
  )
}

export const LoginLinkItem = () => {
  const { role } = useContext(WhoContext)

  const element = (
    <li>
      <a href='/login' className={css.Header__a}>
        Iniciar sesión
      </a>
    </li>
  )
  return (
    <>
      {role === ROLES.GENERAL
        ? element
        : null}
    </>
  )
}
