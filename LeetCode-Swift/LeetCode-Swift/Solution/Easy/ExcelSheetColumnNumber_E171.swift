/*

171. (E) Excel Sheet Column Number

https://leetcode.com/problems/excel-sheet-column-number/

Related to question Excel Sheet Column Title

Given a column title as appear in an Excel sheet, return its corresponding column number.

For example:

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28

*/

class ExcelSheetColumnNumber_E171 {

  func titleToNumber(s: String) -> Int {

    let alphbets = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)
    var pow = 1
    var number = 0
    for char in s.characters.reverse() {
      if let pos = alphbets.indexOf(char) {
        number += (pos + 1) * pow
        pow *= 26

      }
    }

    return number
  }

}