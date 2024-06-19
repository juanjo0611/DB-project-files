import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoHistoriaAcademicaUnal = () => {
  const [historiaAcademicaUnal, setHistoriaAcademicaUnal] = useState([])

  const setInfo = async () => {
    const historia = await GET({
      resource: '/egresado/get-historia-academica-unal'
    })
    setHistoriaAcademicaUnal(historia)
  }
  useEffect(() => { setInfo() }, [])

  return { historiaAcademicaUnal }
}
