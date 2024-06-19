import { useNavigate, useParams } from 'react-router-dom'
import ConsultsForm from '../../../components/global/ConsultsForm/ConsultsForm'
import Header from '../../../components/global/Header/Header'
import css from './ConsultEmpresa.module.css'
import { useEmpresaInfo } from '../../../hooks/empresa/useEmpresaInfo'
import SimpleDataObjectTable from '../../../components/shared/SimpleDataObjectTable/SimpleDataObjectTable'

const ConsultEmpresa = () => {
  const navigate = useNavigate()
  const { id } = useParams()
  const { empresaProps } = useEmpresaInfo({ byId: true, id })

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
        <section className={css.empresaTableContainer}>
          {empresaProps?.[0]
            ? <SimpleDataObjectTable dataObject={{
              Nombre: empresaProps?.[0].Nom_Empresa,
              'Actividad económica principal': empresaProps?.[0].Actividad_economica_principal,
              'Nombre del gerente': empresaProps?.[0].Nombre_gerente,
              País: empresaProps?.[0].Pais_empresa,
              Ciudad: empresaProps?.[0].Ciudad_empresa,
              Dirección: empresaProps?.[0].Direccion_empresa,
              Descripción: empresaProps?.[0].Descripcion
            }}
              />
            : <h2>La empresa por el nit {id} no existe</h2>}
        </section>
      </main>
    </>
  )
}
export default ConsultEmpresa
