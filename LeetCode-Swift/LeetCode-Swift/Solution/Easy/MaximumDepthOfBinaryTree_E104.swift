/*

104. (E) Maximum Depth of Binary Tree My Submissions Question

https://leetcode.com/problems/maximum-depth-of-binary-tree/

Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

*/

class MaximumDepthOfBinaryTree_E104 {

// MARK: recursive

  func maxDepth(root: TreeNode?) -> Int {
    if let root = root {
      let leftMaxDepth = maxDepth(root.left)
      let rightMaxDepth = maxDepth(root.right)
      return 1 + max(leftMaxDepth, rightMaxDepth)
    }
    return 0
  }

}