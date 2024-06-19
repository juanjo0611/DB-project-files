import { useNavigate } from 'react-router-dom'
import ConsultsForm from '../../../components/global/ConsultsForm/ConsultsForm'
import Header from '../../../components/global/Header/Header'
import css from './InitialConsultEgresado.module.css'

const InitialConsultEgresado = () => {
  const navigate = useNavigate()

  const consult = nit => {
    const url = '/consultar-egresado/' + nit
    navigate(url)
  }

  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Consulta la información de un egresado</h1>
        <div className={css.formContainer}>
          <ConsultsForm
            title='Ingresa el DNI'
            placeholder='DNI'
            btnText='Consultar'
            callback={consult}
          />
        </div>
      </main>
    </>
  )
}
export default InitialConsultEgresado
