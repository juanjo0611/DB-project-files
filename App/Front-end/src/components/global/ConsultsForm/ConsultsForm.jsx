import css from './ConsultsForm.module.css'

const ConsultsForm = ({ placeholder, title, btnText, callback }) => {
  const handleSubmit = event => {
    event.preventDefault()
    const formData = new FormData(event.target)
    const query = formData.get('query')
    callback(query)
  }

  return (
    <form className={css.form} onSubmit={handleSubmit}>
      <label className={css.label}>{title}</label>
      <div className={css.inputsContainer}>
        <input className={css.inputContent} type='number' name='query' placeholder={placeholder} />
        <input className={css.inputSubmit} type='submit' value={btnText} />
      </div>
    </form>
  )
}
export default ConsultsForm
