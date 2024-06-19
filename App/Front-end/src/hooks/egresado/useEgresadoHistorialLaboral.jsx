import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoHistorialLaboral = () => {
  const [historialLaboral, setHistorialLaboral] = useState([])

  const setInfo = async () => {
    const historial = await GET({
      resource: '/egresado/get-historial-laboral'
    })
    setHistorialLaboral(historial)
  }
  useEffect(() => { setInfo() }, [])

  return { historialLaboral }
}
