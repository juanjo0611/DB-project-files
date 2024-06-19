import { useParams } from 'react-router-dom'
import Header from '../../../components/global/Header/Header'

const ReadCatedraEspecifica = () => {
  const { id } = useParams()

  return (
    <>
      <Header />
      <main>
        <h1>Información de la Cátedra</h1>
        <span>{id}</span>
      </main>
    </>
  )
}
export default ReadCatedraEspecifica
