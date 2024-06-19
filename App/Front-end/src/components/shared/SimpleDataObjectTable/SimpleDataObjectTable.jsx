import css from './SimpleDataObjectTable.module.css'

const SimpleDataObjectTable = ({ dataObject, leftHeader, rightHeader }) => {
  const head = (leftHeader !== undefined || rightHeader !== undefined)
  return (
    <table className={css.table}>
      <tbody>
        {leftHeader !== undefined || rightHeader !== undefined
          ? (
            <tr parity={0} className={css.tr_head}>
              <th>{leftHeader ?? null}</th>
              <th>{rightHeader ?? null}</th>
            </tr>
            )
          : null}
        {Object.entries(dataObject).map(([key, value], idx) => (
          <tr key={key} parity={(idx + head) % 2}>
            <td>{key} </td>
            <td>{value} </td>
          </tr>
        ))}
      </tbody>
    </table>
  )
}
export default SimpleDataObjectTable
