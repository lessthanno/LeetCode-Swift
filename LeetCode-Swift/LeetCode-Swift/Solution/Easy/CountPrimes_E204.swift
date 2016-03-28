/*

204. (E) Count Primes

https://leetcode.com/problems/count-primes/

Description:

Count the number of prime numbers less than a non-negative number, n.

*/

class CountPrimes_E204 {

// MARK: - Sieve of Es
  func countPrimes(n: Int) -> Int {

    if n <= 1 {
      return 0
    }

    var isPrimes = Array<Bool>(count: n, repeatedValue: true)

    for var i = 2; i * i < n; i += 1 {

      if !isPrimes[i] {
        continue
      }

      for var j = i * 2; j < n; j += i {
        isPrimes[j] = false
      }
    }

    // remove index = 0, 1
    isPrimes[0] = false
    isPrimes[1] = false

    return isPrimes.reduce(0) { (total, isPrime) in
      isPrime ? total + 1 : total
    }

  }

}