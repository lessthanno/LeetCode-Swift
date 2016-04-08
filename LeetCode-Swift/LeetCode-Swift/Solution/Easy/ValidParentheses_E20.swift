/*

20. (E) Valid Parentheses

https://leetcode.com/problems/valid-parentheses/

Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

*/


class ValidParentheses_E20 {

  func isValid(s: String) -> Bool {

    guard s.characters.count % 2 == 0 else {
      return false
    }


    var stack = Stack<Character>()
    for c in s.characters {

      if c == Character("(") || c == Character("{") || c == Character("[") {
        stack.push(c)
      } else {

        guard !stack.empty() else {
          return false
        }

        let top = stack.pop()
        if c == Character(")") {
          if top != Character("(") {
            return false
          }
        } else if c == Character("}") {
          if top != Character("{") {
            return false
          }
        } else  if c == Character("]") {
          if top != Character("[") {
            return false
          }
        }
      }
    }

    if !stack.empty() {
      return false
    }

    return true
  }

}