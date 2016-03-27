/*

111. Minimum Depth of Binary Tree My Submissions Question

https://leetcode.com/problems/minimum-depth-of-binary-tree/

Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

*/

class MinimumDepthOfBinaryTree_E111 {

// MARK: - recursive

  func minDepth(root: TreeNode?) -> Int {
    guard let root = root else {
      return 0
    }

    let leftMinDepth = minDepth(root.left)
    let rightMinDepth = minDepth(root.right)

      if leftMinDepth == 0 && rightMinDepth == 0 {
        return 1
      } else if leftMinDepth == 0 {
        return 1 + rightMinDepth
      } else if rightMinDepth == 0 {
        return 1 + leftMinDepth
    }

    return 1 + min(leftMinDepth, rightMinDepth)

  }

}