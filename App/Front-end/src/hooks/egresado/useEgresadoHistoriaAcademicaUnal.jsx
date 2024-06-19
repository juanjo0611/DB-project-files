import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoHistoriaAcademicaUnal = ({ byId, id }) => {
  const [historiaAcademicaUnal, setHistoriaAcademicaUnal] = useState([])

  const setInfo = async () => {
    const urlResource = '/egresado/get-historia-academica-unal' + (byId ? '/' + id : '')
    const historia = await GET({
      resource: urlResource
    })
    setHistoriaAcademicaUnal(historia)
  }
  useEffect(() => { setInfo() }, [id])

  return { historiaAcademicaUnal }
}
