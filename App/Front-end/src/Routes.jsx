import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import Home from './pages/general/Home/Home.jsx'
// import ReadConvocatorias from './pages/general/ReadConvocatorias/ReadConvocatorias.jsx'
import { createContext } from 'react'
import Login from './pages/general/Login/Login.jsx'
import ReadCatedras from './pages/general/ReadCatedras/ReadCatedras.jsx'
import { useWho } from './hooks/useWho.jsx'
import ReadConvocatorias from './pages/general/ReadConvocatorias/ReadConvocatorias.jsx'
import ReadSeccionEgresados from './pages/general/ReadSeccionEgresados/ReadSeccionEgresados.jsx'
import ConsultEmpresa from './pages/general/ConsultEmpresa/ConsultEmpresa.jsx'
import MyProfileEgresado from './pages/egresado/MyProfileEgresado/MyProfileEgresado.jsx'

export const WhoContext = createContext()

const App = () => {
  const { info } = useWho()
  return (
    <WhoContext.Provider value={{ info }}>
      <Router>
        <Routes>
          <Route path='/' exact element={<Home />} />
          <Route path='/login' exact element={<Login />} />
          <Route path='/ver-convocatorias' exact element={<ReadConvocatorias />} />
          <Route path='/ver-catedras' exact element={<ReadCatedras />} />
          <Route path='/seccion-egresados' exact element={<ReadSeccionEgresados />} />
          <Route path='/consultar-empresa' exact element={<ConsultEmpresa />} />
          <Route path='/ver-mi-perfil-de-egresado' exact element={<MyProfileEgresado />} />
        </Routes>
      </Router>
    </WhoContext.Provider>
  )
}
export default App
