import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoDocumentosInvestigacion = () => {
  const [documentosInvestigacion, setDocumentosInvestigacion] = useState([])

  const setInfo = async () => {
    const documentos = await GET({
      resource: '/egresado/get-documentos-investigacion'
    })
    setDocumentosInvestigacion(documentos)
  }
  useEffect(() => { setInfo() }, [])

  return { documentosInvestigacion }
}
