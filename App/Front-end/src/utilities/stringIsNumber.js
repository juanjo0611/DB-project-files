export const stringIsNumber = (str) => {
  let ans = true
  for (const char of str) {
    ans = ans && ('1234567890'.includes(char))
  }
  return ans
}
