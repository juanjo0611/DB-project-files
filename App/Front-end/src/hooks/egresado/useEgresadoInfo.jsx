import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'
import { PUT } from '../../CRUD/PUT'

export const useEgresadoInfo = ({ byId, id }) => {
  const [egresadoProps, setEgresadoProps] = useState({})

  const setDataEgresado = async () => {
    const urlResource = '/egresado/get-info' + (byId ? '/' + id : '')
    const egresado = await GET({
      resource: urlResource
    })
    setEgresadoProps(egresado)
  }

  const updateEgresado = async ({
    name,
    apellido,
    genero,
    grupoEtnico,
    celular,
    direccionContacto,
    pais
  }) => {
    const response = {}
    try {
      await PUT({
        resource: '/egresado/put-edit-info',
        body: {
          Nom_egresado: name,
          Ape_egresado: apellido,
          Genero: genero,
          Grupo_etnico: grupoEtnico,
          Celular_egresado: celular,
          Direccion_contacto: direccionContacto,
          Pais_egresado: pais
        }
      })
      setDataEgresado()
      response.msg = 'success'
    } catch (error) {
      response.msg = 'error'
    }
    return { msg: response.msg }
  }
  useEffect(() => { setDataEgresado() }, [id])

  return { egresadoProps, updateEgresado }
}
