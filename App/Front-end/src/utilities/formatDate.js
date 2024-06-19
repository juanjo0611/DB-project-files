export const formatDate = ({ date }) => {
  const newDate = new Date(date)
  const options = { year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit', timeZoneName: 'short' }
  const formated = new Intl.DateTimeFormat('es-ES', options).format(newDate)

  return formated
}

const months = {
  '01': 'Enero',
  '02': 'Febrero',
  '03': 'Marzo',
  '04': 'Abril',
  '05': 'Mayo',
  '06': 'Junio',
  '07': 'Julio',
  '08': 'Agosto',
  '09': 'Septiembre',
  10: 'Octubre',
  11: 'Noviembre',
  12: 'Diciembre'
}

export const getOnlyDate = (date) => {
  const fd = date.split('T')[0]
  const [year, month, day] = fd.split('-')
  return [year, months[month], day].join(' - ')
}
