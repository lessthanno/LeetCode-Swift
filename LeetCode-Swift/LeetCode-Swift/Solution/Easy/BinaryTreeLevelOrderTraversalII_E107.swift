/*

107. (E) Binary Tree Level Order Traversal II My Submissions Question

https://leetcode.com/problems/binary-tree-level-order-traversal-ii/

Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).

For example:
Given binary tree {3,9,20,#,#,15,7},

   3
  / \
 9   20
    /  \
   15   7

return its bottom-up level order traversal as:

[
[15,7],
[9,20],
[3]
]

*/

class BinaryTreeLevelOrderTraversalII_E107 {

// MARK: - iterative by GeneratorType

  func levelOrderBottom(root: TreeNode?) -> [[Int]] {
    guard let root = root else {
      return []
    }

    let generator = BinaryTreeLevelOrderGenerator(root: root)
    var result: [[Int]] = []

    var node = generator.next()
    while node != nil {
      result.append(node!)
      node = generator.next()
    }

    return result.reverse()
  }

}