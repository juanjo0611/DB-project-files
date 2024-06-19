import { useNavigate } from 'react-router-dom'
import ConsultsForm from '../../../components/global/ConsultsForm/ConsultsForm'
import Header from '../../../components/global/Header/Header'
import css from './InitialConsultEmpresa.module.css'

const InitialConsultEmpresa = () => {
  const navigate = useNavigate()

  const consult = nit => {
    const url = '/consultar-empresa/' + nit
    navigate(url)
  }

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Consulta la información de una empresa</h1>
        <div className={css.formContainer}>
          <ConsultsForm
            title='Ingresa el NIT'
            placeholder='NIT'
            btnText='Consultar'
            callback={consult}
          />
        </div>
      </main>
    </>
  )
}
export default InitialConsultEmpresa
