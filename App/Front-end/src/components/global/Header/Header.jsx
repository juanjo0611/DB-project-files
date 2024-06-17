import { createContext } from 'react'
import css from './Header.module.css'
import { ROLES } from '../../../globalVariables/Data'
import { HomeLinkItem, LoginLinkItem, RegisterAsCompanyLinkItem } from './HeaderComponents'

export const HeaderRoleContext = createContext()

const Header = () => {
  const role = ROLES.GENERAL

  return (
    <HeaderRoleContext.Provider value={{ role }}>
      <header className={css.Header}>
        <div className={css.Header_leftSection}>
          <nav className={`${css.HeaderNav} ${css.HeaderLeftNav}`}>
            <ul>
              <HomeLinkItem />
            </ul>
          </nav>
        </div>
        <div className={css.Header_rightSection}>
          <nav className={`${css.HeaderNav} ${css.HeaderRightNav}`}>
            <ul>
              <RegisterAsCompanyLinkItem />
              <LoginLinkItem />
            </ul>
          </nav>
        </div>
      </header>
    </HeaderRoleContext.Provider>
  )
}

export default Header
