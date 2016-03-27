/*

112. (E) Path Sum

https://leetcode.com/problems/path-sum/

Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.

For example:
Given the below binary tree and sum = 22,
      5
     / \
    4   8
   /   / \
  11  13  4
 /  \      \
7    2      1
return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.

*/

class PathSum_E112 {

  func hasPathSum(root: TreeNode?, _ sum: Int) -> Bool {

    guard let root = root else {
      return false
    }

    typealias QueueType = Queue<TreeNode>

    var queue = QueueType()
    queue.push(root)

    var leaves: [TreeNode] = []
    while !queue.empty() {
      var queueNext = QueueType()

      for node in queue {
        let parentValue = node.val
        if let left = node.left {
          left.val += parentValue
          queueNext.push(left)
        }

        if let right = node.right {
          right.val += parentValue
          queueNext.push(right)
        }

        if node.left == nil && node.right == nil {
          leaves.append(node)
        }

        queue = queueNext
      }

    }

    for leaf in leaves {
      if sum == leaf.val {
        return true
      }
    }
    return false

  }

}