import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'
import { PUT } from '../../CRUD/PUT'
// import { PUT } from '../../CRUD/PUT'

export const useEmpresaInfo = ({ byId, id }) => {
  const [empresaProps, setEmpresaProps] = useState({})

  const setDataEmpresa = async () => {
    const urlResource = '/empresa/get-info' + (byId ? '/' + id : '')
    const empresa = await GET({
      resource: urlResource
    })
    setEmpresaProps(empresa)
  }

  const updateEmpresa = async ({
    name,
    actividadEconomica,
    nombreGerente,
    ciudad,
    direccion,
    descripcion
  }) => {
    const response = {}
    try {
      await PUT({
        resource: '/empresa/put-edit-info',
        body: {
          Nom_empresa: name,
          Actividad_economica_principal: actividadEconomica,
          Nombre_gerente: nombreGerente,
          Ciudad_empresa: ciudad,
          Direccion_empresa: direccion,
          Descripcion: descripcion
        }
      })
      setDataEmpresa()
      response.msg = 'success'
    } catch (error) {
      response.msg = 'error'
    }
    return { msg: response.msg }
  }
  useEffect(() => { setDataEmpresa() }, [id])

  return { empresaProps, updateEmpresa }
}
