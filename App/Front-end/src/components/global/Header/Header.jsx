import { createContext } from 'react'
import css from './Header.module.css'

const Header = () => {
  return (
    <header className={css.Header}>
      <div className={css.Header_leftSection}>
        <nav className={css.HeaderNav + css.HeaderLeftNav}>
          <ul>
            <li>
              <a href="losa">
                
              </a>
            </li>
          </ul>
        </nav>
      </div>
      <div className={css.Header_rightSection}>
        <nav className={css.HeaderNav + css.HeaderRightNav}>
          <ul>
            <li>
              <a href=""></a>
            </li>
          </ul>
        </nav>
      </div>
    </header>
  )
}

export default Header
