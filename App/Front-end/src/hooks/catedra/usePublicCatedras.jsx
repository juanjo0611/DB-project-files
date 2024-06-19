import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const usePublicCatedras = () => {
  const [catedras, setCatedras] = useState([])

  const setInfo = async () => {
    const queryCatedras = await GET({
      resource: '/catedra/get-public-catedras'
    })
    setCatedras(queryCatedras)
  }
  useEffect(() => { setInfo() }, [])

  return { catedras }
}
