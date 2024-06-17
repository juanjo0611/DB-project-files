// import { createContext } from 'react'
import { GET } from '../../../CRUD/GET'
import css from './Header.module.css'

const Header = () => {
  const doQuery = async () => {
    const res = await GET({ resource: '/auth' })
    // const json = await res.json()
    console.log(res)
  }

  return (
    <header className={css.Header}>
      <div className={css.Header_leftSection}>
        <nav className={`${css.HeaderNav} ${css.HeaderLeftNav}`}>
          <ul>
            <li>
              <a href='losa' />
            </li>
          </ul>
        </nav>
      </div>
      <div className={css.Header_rightSection}>
        <nav className={`${css.HeaderNav} ${css.HeaderRightNav}`}>
          <ul>
            <li>
              <button onClick={() => doQuery()}>Hacer query</button>
            </li>
          </ul>
        </nav>
      </div>
    </header>
  )
}

export default Header
