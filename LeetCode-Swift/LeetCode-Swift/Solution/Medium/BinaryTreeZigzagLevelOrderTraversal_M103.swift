/*

103. (M) Binary Tree Zigzag Level Order Traversal
 
https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/

Given a binary tree, return the zigzag level order traversal of its nodes' values. (ie, from left to right, then right to left for the next level and alternate between).

 For example:
 Given binary tree {3,9,20,#,#,15,7},

    3
   / \
  9  20
    /  \
   15   7

return its zigzag level order traversal as:
 
[
  [3],
  [20,9],
  [15,7]
]

*/


class BinaryTreeZigzagLevelOrderTraversal_M103 {

  func zigzagLevelOrder(root: TreeNode?) -> [[Int]] {

    guard let root = root else {
      return []
    }

    let generator = BinaryTreeLevelOrderGenerator(root: root)
    var result: [[Int]] = []

    var node = generator.next()
    var zigzag = 0
    while node != nil {
      if zigzag % 2 == 1 {
        node = node!.reverse()
      }
      zigzag += 1

      result.append(node!)
      node = generator.next()
    }

    return result
  }

}