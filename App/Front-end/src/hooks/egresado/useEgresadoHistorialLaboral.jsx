import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoHistorialLaboral = ({ byId, id }) => {
  const [historialLaboral, setHistorialLaboral] = useState([])

  const setInfo = async () => {
    const urlResource = '/egresado/get-historial-laboral' + (byId ? '/' + id : '')
    const historial = await GET({
      resource: urlResource
    })
    setHistorialLaboral(historial)
  }
  useEffect(() => { setInfo() }, [id])

  return { historialLaboral }
}
