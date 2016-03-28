/*

326. (E) Power of Three

https://leetcode.com/problems/power-of-three/

Given an integer, write a function to determine if it is a power of three.

Follow up:
Could you do it without using any loop / recursion?

*/

class PowerOfThree_E326 {

// MARK: - No iterative/recursive solution

  func isPowerOfThree(n: Int64) -> Bool {
    // the biggest Int is 3 ^ 39, 3 ^ 40 will overflow.
    return n > 0 && 4052555153018976267 % n == 0
  }

// MARK: - Recursive

  func isPowerOfThreeRecursive(n: Int) -> Bool {

    if n <= 0 {
      return false
    }

    if n % 3 == 0 {
      return isPowerOfThreeRecursive( n / 3 )
    }

    return n == 1
  }

}