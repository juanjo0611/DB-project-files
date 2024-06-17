import { useContext } from 'react'
import { ROLES } from '../../../globalVariables/Data'
import css from './HeaderComponents.module.css'
import { WhoContext } from '../../../Routes'

const LinkGroup = ({ link, anchor }) => {
  return (
    <li className={css.Header__li}>
      <a href={link} className={css.Header__a}>
        {anchor}
      </a>
    </li>
  )
}

export const HomeLinkItem = () => {
  return <LinkGroup link='/' anchor='Home' />
}

export const RegisterAsCompanyLinkItem = () => {
  const { info } = useContext(WhoContext)

  return (
    <>
      {info.role === ROLES.GENERAL
        ? <LinkGroup link='/registrar-empresa' anchor='Registrarse como empresa' />
        : null}
    </>
  )
}

export const LoginLinkItem = () => {
  const { info } = useContext(WhoContext)

  return (
    <>
      {info.role === ROLES.GENERAL
        ? <LinkGroup link='/login' anchor='Iniciar sesión' />
        : null}
    </>
  )
}

export const LogoutBtnItem = () => {
  const { info } = useContext(WhoContext)

  const logout = () => {
    window.localStorage.removeItem('token')
    window.location.reload()
  }

  const element = (
    <li>
      <span className={css.Header__logout} onClick={logout}>
        Cerrar sesión
      </span>
    </li>
  )

  return (
    <>
      {info.role !== ROLES.GENERAL
        ? element
        : null}
    </>
  )
}

export const MyProfileEgresadoLinkItem = () => {
  const { info } = useContext(WhoContext)

  return (
    <>
      {info.role === ROLES.EGRESADO
        ? <LinkGroup link='/ver-mi-perfil-de-egresado' anchor='Mirar mi perfil' />
        : null}
    </>
  )
}

export const NameInfoItem = () => {
  const { info } = useContext(WhoContext)

  return (
    <>
      {info.role !== ROLES.GENERAL
        ? <span className={css.Header__username}>{info.name}</span>
        : null}
    </>
  )
}
