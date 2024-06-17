import { useState } from 'react'
import { POST } from '../../../CRUD/POST'

const ReadCatedras = () => {
  const [response, setResponse] = useState(null)
  const [id, setId] = useState(null)
  const handleClick = async () => {
    console.log(id)
    const qy = await POST({
      resource: '/auth/login',
      body: {
        dni: parseInt(id)
      }
    })
    console.log(qy)
    setResponse(qy)
  }

  const handleKey = event => {
    setId(event.target.value)
  }

  return (
    <>
      <input type='text' onKeyUp={handleKey} />
      <button onClick={() => handleClick()}>
        Llamar procediminento almacenado
      </button>
      <div>
        <span>Nombre: </span>{response?.[0]?.Nom_egresado ?? ''}
      </div>
      <div>
        <span>Apellido: </span>{response?.[0]?.Ape_egresado ?? ''}
      </div>
    </>
  )
}
export default ReadCatedras
