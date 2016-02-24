/*

242. (E) Valid Anagram

https://leetcode.com/problems/valid-anagram/

Given two strings s and t, write a function to determine if t is an anagram of s.

For example,
s = "anagram", t = "nagaram", return true.
s = "rat", t = "car", return false.

Note:
You may assume the string contains only lowercase alphabets.

*/


import Foundation

class ValidAnagram_E242 {

  func isAnagram(s: String, _ t: String) -> Bool {

    if s.characters.count != t.characters.count {
      return false
    }

    var counts = Array<Int>(count: 26, repeatedValue: 0)
    for c in s.utf8 {
      let spos: Int = Int(c) - 97
      counts[spos]++
    }
    for c in t.utf8 {
      let spos: Int = Int(c) - 97
      counts[spos]--
    }

    for n in counts {
      if n != 0 {
        return false
      }
    }

    return true
  }

}