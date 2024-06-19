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
  const { who } = useContext(WhoContext)

  return (
    <>
      {who.role === ROLES.GENERAL
        ? <LinkGroup link='/registrar-empresa' anchor='Registrarse como empresa' />
        : null}
    </>
  )
}

export const LoginLinkItem = () => {
  const { who } = useContext(WhoContext)

  return (
    <>
      {who.role === ROLES.GENERAL
        ? <LinkGroup link='/login' anchor='Iniciar sesión' />
        : null}
    </>
  )
}

export const LogoutBtnItem = () => {
  const { who } = useContext(WhoContext)

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
      {who.role !== ROLES.GENERAL
        ? element
        : null}
    </>
  )
}

export const MyProfileEgresadoLinkItem = () => {
  const { who } = useContext(WhoContext)

  return (
    <>
      {who.role === ROLES.EGRESADO
        ? <LinkGroup link='/ver-mi-perfil-de-egresado' anchor='Mirar mi perfil' />
        : null}
    </>
  )
}

export const MyConvocatoriasLinkItem = () => {
  const { who } = useContext(WhoContext)

  return (
    <>
      {who.role === ROLES.EMPRESA || who.role === ROLES.ADMINISTRATIVO
        ? <LinkGroup link='/mis-convocatorias-manager' anchor='Mis convocatorias' />
        : null}
    </>
  )
}

export const MyProfileEmpresaLinkItem = () => {
  const { who } = useContext(WhoContext)

  return (
    <>
      {who.role === ROLES.EMPRESA
        ? <LinkGroup link='/ver-mi-perfil-de-empresa' anchor='Mi perfil' />
        : null}
    </>
  )
}

export const NameInfoItem = () => {
  const { who } = useContext(WhoContext)

  return (
    <li>
      {who.role !== ROLES.GENERAL
        ? <span className={css.Header__username}>{who.name}</span>
        : null}
    </li>
  )
}
