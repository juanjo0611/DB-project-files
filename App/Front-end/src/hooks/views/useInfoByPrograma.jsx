import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useInfoByPrograma = () => {
  const [infoByPrograma, setInfoByPrograma] = useState({})

  const setInfo = async () => {
    try {
      const registerslist = await GET({
        resource: '/view/programa-educativo-informacion'
      })
      const obj = {}
      for (const register of registerslist) {
        obj[register.Programa_educativo] = [register.N_egresados, register.Promedio_nota]
      }
      setInfoByPrograma(obj)
    } catch (error) {
      console.log(error)
    }
  }
  useEffect(() => { setInfo() }, [])

  return { infoByPrograma }
}
