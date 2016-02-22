/*

263. (E) Ugly Number

https://leetcode.com/problems/ugly-number/

Write a program to check whether a given number is an ugly number.

Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.

Note that 1 is typically treated as an ugly number.
*/

class UglyNumber_E263 {

  func isUgly(num: Int) -> Bool {

    if num <= 0 {
      return false
    }

    if num <= 6 {
      return true
    }

    var n = num
    while (n >= 2) {

      if n % 2 == 0 {
        n /= 2
      } else if n % 3 == 0 {
        n /= 3
      } else if n % 5 == 0 {
        n /= 5
      } else {
        return false
      }
    }

    return n == 1
  }

}