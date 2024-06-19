import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoHistoriaAcademicaExterna = () => {
  const [historiaAcademicaExterna, setHistoriaAcademicaExterna] = useState([])

  const setInfo = async () => {
    const historia = await GET({
      resource: '/egresado/get-historia-academica-externa'
    })
    setHistoriaAcademicaExterna(historia)
  }
  useEffect(() => { setInfo() }, [])

  return { historiaAcademicaExterna }
}
