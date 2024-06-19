import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoHistoriaAcademicaExterna = ({ byId, id }) => {
  const [historiaAcademicaExterna, setHistoriaAcademicaExterna] = useState([])

  const setInfo = async () => {
    const urlResource = '/egresado/get-historia-academica-externa' + (byId ? '/' + id : '')
    const historia = await GET({
      resource: urlResource
    })
    setHistoriaAcademicaExterna(historia)
  }
  useEffect(() => { setInfo() }, [id])

  return { historiaAcademicaExterna }
}
