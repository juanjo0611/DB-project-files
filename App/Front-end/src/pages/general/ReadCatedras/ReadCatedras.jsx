import { useState } from 'react'
import { POST } from '../../../CRUD/POST'
import Header from '../../../components/global/Header/Header'
import css from './ReadCatedras.module.css'
import CatedraCard from '../../../components/catedras/CatedraCard/CatedraCard'

const ReadCatedras = () => {
  return (
    <>
      <Header />
      <main>
        <h1 className={css.title}>Cátedras</h1>
        <CatedraCard />
      </main>
    </>
  )
}
export default ReadCatedras
