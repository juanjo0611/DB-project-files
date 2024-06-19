import { useNavigate } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'
import css from './MyProfileEmpresa.module.css'
import { useContext, useEffect } from 'react'
import { ROLES } from '../../../globalVariables/Data'
import { WhoContext } from '../../../Routes'
import { useEmpresaInfo } from '../../../hooks/empresa/useEmpresaInfo'
import SimpleDataObjectTable from '../../../components/shared/SimpleDataObjectTable/SimpleDataObjectTable'

const MyProfileEmpresa = () => {
  const { who } = useContext(WhoContext)
  const { empresaProps } = useEmpresaInfo({ byId: false })
  const navigate = useNavigate()

  useEffect(() => {
    if (who.role !== undefined && who.role !== ROLES.EMPRESA) {
      navigate('/login')
    }
  }, [who.role])

  console.log(empresaProps)

  return (
    <>
      <Header />
      <main className={css.main}>
        <h1 className={css.title}>Mi perfil de Empresa</h1>
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
            : null}
        </section>
        <div className={css.editDataLinkContainer}>
          <a href='/editar-mi-perfil-de-empresa' className={css.editDataLink}>Editar mis datos</a>
        </div>
      </main>
    </>
  )
}
export default MyProfileEmpresa
