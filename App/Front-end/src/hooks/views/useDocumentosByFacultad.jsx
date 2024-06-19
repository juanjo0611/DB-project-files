import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useDocumentosByFacultad = () => {
  const [documentosByFacultad, setDocumentosByFacultad] = useState({})

  const setInfo = async () => {
    try {
      const registerslist = await GET({
        resource: '/view/documentos-por-facultad'
      })
      const obj = {}
      for (const register of registerslist) {
        obj[register.Facultad] = register.N_documentos
      }
      setDocumentosByFacultad(obj)
    } catch (error) {
      console.log(error)
    }
  }
  useEffect(() => { setInfo() }, [])

  return { documentosByFacultad }
}
