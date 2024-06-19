import css from './DoubleDataObjectTable.module.css'

const DoubleDataObjectTable = ({ dataObject, leftHeader, midHeader, rightHeader }) => {
  const head = (leftHeader !== undefined || rightHeader !== undefined)
  return (
    <table className={css.table}>
      <tbody>
        {leftHeader !== undefined || rightHeader !== undefined
          ? (
            <tr parity={0} className={css.tr_head}>
              <th>{leftHeader ?? null}</th>
              <th>{midHeader ?? null}</th>
              <th>{rightHeader}</th>
            </tr>
            )
          : null}
        {Object.entries(dataObject).map(([key, value], idx) => (
          <tr key={key} parity={(idx + head) % 2}>
            <td>{key} </td>
            <td>{value[0]} </td>
            <td>{value[1]} </td>
          </tr>
        ))}
      </tbody>
    </table>
  )
}
export default DoubleDataObjectTable
