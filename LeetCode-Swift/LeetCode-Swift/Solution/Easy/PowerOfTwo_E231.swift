/*

231. (E) Power of Two

https://leetcode.com/problems/power-of-two/

Given an integer, write a function to determine if it is a power of two.

*/

class PowerOfTwo_E231 {

  // Recursive
  func isPowerOfTwo(n: Int) -> Bool {

    if n <= 0 {
      return false
    }

    if n == 1 {
      return true
    }

    if n % 2 == 0 {
      return isPowerOfTwo(n / 2)
    }

    return false
  }

  func isPowerOfTwoIterative(n: Int) -> Bool {

    if n <= 0 {
      return false
    }

    if n == 1 {
      return true
    }

    var num = n
    while num % 2 == 0 {
      num /= 2
      if num == 1 {
        return true
      }
    }

    return false
  }

}