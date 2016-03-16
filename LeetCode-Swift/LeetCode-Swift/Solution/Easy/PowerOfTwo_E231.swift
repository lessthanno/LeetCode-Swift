/*

231. (E) Power of Two

https://leetcode.com/problems/power-of-two/

Given an integer, write a function to determine if it is a power of two.

*/

class PowerOfTwo_E231 {

// MARK: - Recursive

  func isPowerOfTwo(n: Int) -> Bool {

    if n <= 0 {
      return false
    }

    if n % 2 == 0 {
      return isPowerOfTwo(n / 2)
    }

    return n == 1
  }

// MARK: - Iterative

  func isPowerOfTwoIterative(n: Int) -> Bool {

    if n <= 0 {
      return false
    }

    var num = n
    while num % 2 == 0 {
      num /= 2
    }

    return num == 1
  }


}