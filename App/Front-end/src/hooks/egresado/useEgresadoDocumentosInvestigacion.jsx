import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadoDocumentosInvestigacion = ({ byId, id }) => {
  const [documentosInvestigacion, setDocumentosInvestigacion] = useState([])

  const setInfo = async () => {
    const urlResource = '/egresado/get-documentos-investigacion' + (byId ? '/' + id : '')
    const documentos = await GET({
      resource: urlResource
    })
    setDocumentosInvestigacion(documentos)
  }
  useEffect(() => { setInfo() }, [id])

  return { documentosInvestigacion }
}
