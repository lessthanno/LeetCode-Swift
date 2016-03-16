/*

110. (E) Balanced Binary Tree

https://leetcode.com/problems/balanced-binary-tree/

Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

*/

class BalancedBinaryTree_E110 {

// MARK: - recursive depth & isBalanced

  func depth(root: TreeNode?) -> Int {

    guard let root = root else {
      return 0
    }

    let leftDepth = depth(root.left)
    let rightDepth = depth(root.right)

    return max(leftDepth, rightDepth) + 1

  }

  func isBalanced(root: TreeNode?) -> Bool {

    guard let root = root else {
      return true
    }

    let leftDepth = depth(root.left)
    let rightDepth = depth(root.right)

    if abs(leftDepth - rightDepth) <= 1 {
      return isBalanced(root.left) && isBalanced(root.right)
    }

    return false
  }

// MARK: - recursive only isBalance

  func isBalanced(root: TreeNode?) -> (Bool, Int) {
    guard let root = root else {
      return (true, 0)
    }

    let (leftIsBalanced, leftDepth) = isBalanced(root.left)
    let (rightIsBalanced, rightDepth) = isBalanced(root.right)

    if abs(leftDepth - rightDepth) <= 1 {
      return (leftIsBalanced && rightIsBalanced, max(leftDepth, rightDepth) + 1)
    }

    return (false, max(leftDepth, rightDepth) + 1)
  }

  func isBalancedRecusriveOnlyOne(root: TreeNode?) -> Bool {
    let (isBalanced, _) = self.isBalanced(root)
    return isBalanced
  }

}