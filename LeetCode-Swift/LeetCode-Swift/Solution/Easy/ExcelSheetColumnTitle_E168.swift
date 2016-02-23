/*

168. (E) Excel Sheet Column Title

https://leetcode.com/problems/excel-sheet-column-title/

Given a positive integer, return its corresponding column title as appear in an Excel sheet.

For example:

1 -> A
2 -> B
3 -> C
...
26 -> Z
27 -> AA
28 -> AB

*/


import Foundation

class ExcelSheetColumnTitle_E168 {

  func convertToTitle(n: Int) -> String {

    let alphbets = Array("ZABCDEFGHIJKLMNOPQRSTUVWXY".characters)

    var num = n
    var title = ""

    while num  > 0 {

      let mod = num % 26

      if mod == 0 {
        title.insert(Character("Z"), atIndex: title.startIndex)
        num /= 26
        num--
      }
      else {
        let letter = alphbets[mod]
        title.insert(letter, atIndex: title.startIndex)
        num /= 26
      }

    }

    return title
  }

}