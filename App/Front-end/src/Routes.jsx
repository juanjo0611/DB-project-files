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
import EditMyProfileEgresado from './pages/egresado/EditMyProfileEgresado/EditMyProfileEgresado.jsx'
import MyProfileEmpresa from './pages/empresa/MyProfileEmpresa/MyProfileEmpresa.jsx'
import EditMyProfileEmpresa from './pages/empresa/EditMyProfileEmpresa/EditMyProfileEmpresa.jsx'
import InitialConsultEmpresa from './pages/general/ConsultEmpresa/InitialConsultEmpresa.jsx'
import ReadCatedraEspecifica from './pages/general/ReadCatedraEspecifica/ReadCatedraEspecifica.jsx'

export const WhoContext = createContext()

const App = () => {
  const { who } = useWho()
  return (
    <WhoContext.Provider value={{ who }}>
      <Router>
        <Routes>
          <Route path='/' exact element={<Home />} />
          <Route path='/login' exact element={<Login />} />
          <Route path='/ver-convocatorias' exact element={<ReadConvocatorias />} />
          <Route path='/ver-catedras' exact element={<ReadCatedras />} />
          <Route path='/ver-catedra-especifica/:id' exact element={<ReadCatedraEspecifica />} />
          <Route path='/seccion-egresados' exact element={<ReadSeccionEgresados />} />
          <Route path='/consultar-empresa' exact element={<InitialConsultEmpresa />} />
          <Route path='/consultar-empresa/:id' exact element={<ConsultEmpresa />} />
          <Route path='/ver-mi-perfil-de-egresado' exact element={<MyProfileEgresado />} />
          <Route path='/editar-mi-perfil-de-egresado' exact element={<EditMyProfileEgresado />} />
          <Route path='/ver-mi-perfil-de-empresa' exact element={<MyProfileEmpresa />} />
          <Route path='/editar-mi-perfil-de-empresa' exact element={<EditMyProfileEmpresa />} />
        </Routes>
      </Router>
    </WhoContext.Provider>
  )
}
export default App
