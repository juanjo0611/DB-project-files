export const formatDate = ({ date }) => {
  const newDate = new Date(date)
  const options = { year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit', timeZoneName: 'short' }
  const formated = new Intl.DateTimeFormat('es-ES', options).format(newDate)

  return formated
}
