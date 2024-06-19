import { BACK } from '../globalVariables/Data'

export const DELETE = async ({ resource }) => {
  const token = window.localStorage.getItem('token')
  const bearer = token ?? ''

  const data = {
    method: 'DELETE',
    headers: {
      'Content-type': 'application/json',
      'x-auth-token': bearer
    }
  }

  const url = BACK.BASE_URL + resource
  try {
    const response = await fetch(url, data)
    const jsn = response.json()
    return jsn
  } catch (error) {
    console.log(error)
  }
}
