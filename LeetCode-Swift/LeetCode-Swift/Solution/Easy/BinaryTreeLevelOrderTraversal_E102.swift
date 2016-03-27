/*

102. Binary Tree Level Order Traversal My Submissions Question

https://leetcode.com/problems/binary-tree-level-order-traversal/

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree {3,9,20,#,#,15,7},
  3
 / \
 9  20
   /  \
  15   7

return its level order traversal as:

[
[3],
[9,20],
[15,7]
]

*/

class BinaryTreeLevelOrderTraversal_E102 {

  func levelOrder(root: TreeNode?) -> [[Int]] {

    guard let root = root else {
      return []
    }

    var queue = Queue<TreeNode>()
    queue.push(root)
    var queueNext = Queue<TreeNode>()

    var resultLevel:[Int] = []
    var output: [[Int]] = []

    while !queue.empty() {

      for node in queue {
        resultLevel.append(node.val)

        if let left = node.left {
          queueNext.push(left)
        }

        if let right = node.right {
          queueNext.push(right)
        }
      }

      output.append(resultLevel)
      resultLevel.removeAll()
      queue = queueNext
      queueNext.removeAll()
    }
    return output
  }

}