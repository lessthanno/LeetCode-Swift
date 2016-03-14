/*

96. (M) Unique Binary Search Trees

https://leetcode.com/problems/unique-binary-search-trees/

Given n, how many structurally unique BST's (binary search trees) that store values 1...n?

For example, Given n = 3, there are a total of 5 unique BST's.

 1         3     3      2      1
  \       /     /      / \      \
   3     2     1      1   3      2
  /     /       \                 \
 2     1         2                 3

*/

class UniqueBinarySearchTrees_E96 {

  func numTrees(n: Int) -> Int {

    if n == 0 {
      return 1
    } else if n == 1 {
      return 1
    } else if n == 2 {
      return 2
    } else if n == 3 {
      return 5
    }

    var num = 0
    for i in 1...n {
      num += numTrees(n - i) * numTrees(i - 1)
    }
    return num
  }

}