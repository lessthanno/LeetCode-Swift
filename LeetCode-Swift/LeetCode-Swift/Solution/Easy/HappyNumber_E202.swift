/*

202. (E) Happy Number

https://leetcode.com/problems/happy-number/

Write an algorithm to determine if a number is "happy".

A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. 
Those numbers for which this process ends in 1 are happy numbers.

Example: 19 is a happy number

12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1

*/

class HappyNumber_E202 {

  func digitsSquareSum(num: Int) -> Int {
    var n = num
    var res = (n % 10) * (n % 10)
    while n > 0 {
      n /= 10
      res += (n % 10) * (n % 10)
    }
    return res
  }

  func isHappy(n: Int) -> Bool {

    var unHappyNumbers = Set([0, 2, 3, 4, 5, 6, 8, 9, 11])
    var num = n
    while true {
      num = digitsSquareSum(num)
      if num == 1 || num == 7 || num == 19 {
        return true
      }

      if unHappyNumbers.contains(num) {
        return false
      } else {
        unHappyNumbers.insert(num)
      }
    }

  }

}