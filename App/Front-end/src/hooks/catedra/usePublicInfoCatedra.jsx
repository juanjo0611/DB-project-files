import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const usePublicInfoCatedra = ({ id }) => {
  const [catedra, setCatedras] = useState([])

  const setInfo = async () => {
    const urlResource = '/catedra/get-public-info-catedra/' + id
    const queryCatedra = await GET({
      resource: urlResource
    })
    setCatedras(queryCatedra)
  }
  useEffect(() => { setInfo() }, [id])

  return { catedra }
}
