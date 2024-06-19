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
        <CatedraCard
          name='Cátedra de inteligencia artificial'
          initDate='2025 - Julio - 23'
          endDate='2026 - Enero - 20'
        />
      </main>
    </>
  )
}
export default ReadCatedras
