import css from './Header.module.css'
import { HomeLinkItem, LoginLinkItem, LogoutBtnItem, MyProfileEgresadoLinkItem, NameInfoItem, RegisterAsCompanyLinkItem } from './HeaderComponents'

const Header = () => {
  return (
    <header className={css.Header}>
      <div className={css.Header__div_left}>
        <nav className={`${css.Header__nav} ${css.Header__nav_left}`}>
          <ul className={`${css.Header__ul} ${css.Header__ul_left}`}>
            <HomeLinkItem />
          </ul>
        </nav>
      </div>
      <div className={css.Header__div_right}>
        <nav className={`${css.Header__nav} ${css.Header__nav_right}`}>
          <ul className={`${css.Header__ul} ${css.Header__ul_right}`}>
            <RegisterAsCompanyLinkItem />
            <LoginLinkItem />

            <LogoutBtnItem />
            <MyProfileEgresadoLinkItem />
            <NameInfoItem />
          </ul>
        </nav>
      </div>
    </header>
  )
}

export default Header
