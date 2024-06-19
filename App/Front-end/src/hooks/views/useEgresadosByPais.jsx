import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadosByPais = () => {
  const [egresadosByPais, setEgresadosByPais] = useState({})

  const setInfo = async () => {
    try {
      const registerslist = await GET({
        resource: '/view/egresados-trabajar-paises'
      })
      const obj = {}
      for (const register of registerslist) {
        obj[register.Pais] = register.N_egresados
      }
      setEgresadosByPais(obj)
    } catch (error) {
      console.log(error)
    }
  }
  useEffect(() => { setInfo() }, [])

  return { egresadosByPais }
}
