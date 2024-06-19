import { useEffect, useState } from 'react'
import { GET } from '../../CRUD/GET'

export const useEgresadosCoordinadores = ({ id }) => {
  const [egresadosCoordinadores, setEgresadosCoordinadores] = useState([])

  const setInfo = async () => {
    const urlResource = '/catedra/get-egresados-coordinadores/' + id
    const queryCatedra = await GET({
      resource: urlResource
    })
    setEgresadosCoordinadores(queryCatedra)
  }
  useEffect(() => { setInfo() }, [id])

  return { egresadosCoordinadores }
}
