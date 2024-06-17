import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import Home from './pages/general/Home/Home.jsx'
// import ReadConvocatorias from './pages/general/ReadConvocatorias/ReadConvocatorias.jsx'
import { ROLES } from './globalVariables/Data.js'
import { createContext } from 'react'
import Login from './pages/general/Login/Login.jsx'
import ReadCatedras from './pages/general/ReadCatedras/ReadCatedras.jsx'

export const WhoContext = createContext()

const App = () => {
  const role = ROLES.GENERAL // Coming soon : custom hook useWho

  return (
    <WhoContext.Provider value={{ role }}>
      <Router>
        <Routes>
          <Route path='/' exact element={<Home />} />
          <Route path='/login' exact element={<Login />} />
          <Route path='/ver-catedras' exact element={<ReadCatedras />} />
        </Routes>
      </Router>
    </WhoContext.Provider>
  )
}
export default App
