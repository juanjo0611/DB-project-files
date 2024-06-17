import { useContext } from 'react'
import { Link } from 'react-router-dom'
import Header, { HeaderRoleContext } from './Header'
import { ROLES } from '../../../globalVariables/Data'

export const HomeLinkItem = () => {
  const { role } = useContext(HeaderRoleContext)
  return (
    <li>
      <Link to='/'>Home</Link>
    </li>
  )
}

export const RegisterAsCompanyLinkItem = () => {
  const { role } = useContext(HeaderRoleContext)

  const element = (
    <li>
      <Link to='/register-empresa'>Registrarse como empresa</Link>
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
  const { role } = useContext(HeaderRoleContext)

  const element = (
    <li>
      <Link to='/login'>Iniciar sesión</Link>
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
