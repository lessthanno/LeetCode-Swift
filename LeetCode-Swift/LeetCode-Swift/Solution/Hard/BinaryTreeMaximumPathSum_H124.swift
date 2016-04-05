/*

124. (H) Binary Tree Maximum Path Sum

https://leetcode.com/problems/binary-tree-maximum-path-sum/

Given a binary tree, find the maximum path sum.

For this problem, a path is defined as any sequence of nodes from some starting node to any node in the tree along the parent-child connections.
The path does not need to go through the root.

For example:
Given the below binary tree,

    1
   / \
  2   3

Return 6.

*/

class BinaryTreeMaximumPathSum_H124 {

  var result: Int = Int.min

  func maxRootToLeafPathSum(root: TreeNode?) -> Int {

    guard let root = root else {
      return 0
    }

    let leftMaxRootToLeafPathSum = maxRootToLeafPathSum(root.left)
    let rightMaxRootToLeafPathSum = maxRootToLeafPathSum(root.right)
    let rootToLeafPathSum = max(leftMaxRootToLeafPathSum + root.val, max(rightMaxRootToLeafPathSum + root.val, root.val))

    let maxRootPath = leftMaxRootToLeafPathSum + rightMaxRootToLeafPathSum + root.val
    result = max(result, max(rootToLeafPathSum, maxRootPath))

    return rootToLeafPathSum
  }

  func maxPathSum(root: TreeNode?) -> Int {
    result = Int.min
    maxRootToLeafPathSum(root)
    return result
  }

}