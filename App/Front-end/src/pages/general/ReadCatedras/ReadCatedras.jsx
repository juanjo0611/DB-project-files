import { useState } from 'react'
import { POST } from '../../../CRUD/POST'
import Header from '../../../components/global/Header/Header'

const ReadCatedras = () => {
  const [response, setResponse] = useState(null)
  const [id, setId] = useState(null)
  const handleClick = async () => {
    console.log(id)
    const qy = await POST({
      resource: '/auth/login-egresado',
      body: {
        dni: parseInt(id),
        password: 'Peritoperez'
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
      <Header />
      <main>
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
      </main>
    </>
  )
}
export default ReadCatedras
