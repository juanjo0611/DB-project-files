import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'
import { DELETE } from '../../CRUD/DELETE'

export const useOwnCatedras = () => {
  const [catedras, setCatedras] = useState([])

  const setInfo = async () => {
    const queryCatedras = await GET({
      resource: '/catedra/get-public-catedras'
    })
    setCatedras(queryCatedras)
  }
  useEffect(() => { setInfo() }, [])

  const deleteCatedra = async (id) => {
    const urlResource = '/catedra/delete-catedra/' + id
    try {
      await DELETE({
        resource: urlResource
      })
      setInfo()
      return { msg: 'success' }
    } catch (error) {
      console.log(error)
      return { msg: 'error' }
    }
  }

  return { catedras, deleteCatedra }
}
