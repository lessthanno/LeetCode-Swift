/*

129. (M) Sum Root to Leaf Numbers

https://leetcode.com/problems/sum-root-to-leaf-numbers/

Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.

An example is the root-to-leaf path 1->2->3 which represents the number 123.

Find the total sum of all root-to-leaf numbers.

For example,

  1
 / \
2   3

The root-to-leaf path 1->2 represents the number 12.
The root-to-leaf path 1->3 represents the number 13.

Return the sum = 12 + 13 = 25.

*/
import Foundation

class SumRootToLeafNumbers_M129 {

  func sumNumbers(root: TreeNode?) -> Int {
    guard let root = root else {
      return 0
    }

    var queue = Queue<TreeNode>()
    queue.push(root)

    var leaves: [TreeNode] = []

    while !queue.empty() {
      var queueNext = Queue<TreeNode>()

      for node in queue {
        let parentValue = node.val
        if let left = node.left {
          left.val = 10 * parentValue + left.val
          queueNext.push(left)
        }

        if let right = node.right {
          right.val = 10 * parentValue + right.val
          queueNext.push(right)
        }

        if node.left == nil && node.right == nil {
          leaves.append(node)
        }
      }

      queue = queueNext
    }

    return leaves.reduce(0) { (total: Int, node: TreeNode) in
      return node.val + total
    }

  }
}