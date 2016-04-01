/*

98. (M) Validate Binary Search Tree

https://leetcode.com/problems/validate-binary-search-tree/

Given a binary tree, determine if it is a valid binary search tree (BST).

Assume a BST is defined as follows:

The left subtree of a node contains only nodes with keys less than the node's key.
The right subtree of a node contains only nodes with keys greater than the node's key.
Both the left and right subtrees must also be binary search trees.

*/

class ValidateBinarySearchTree_M98 {

  // MARK: - recursive

  func isValidBSTHelper(root: TreeNode?, minValue: Int?, maxValue:Int?) -> Bool {
    guard let root = root else {
      return true
    }

    if let minValue = minValue {
      if root.val <= minValue {
        return false
      }
    }

    if let maxValue = maxValue {
      if root.val >= maxValue {
        return false
      }
    }

    return isValidBSTHelper(root.left, minValue: minValue, maxValue: root.val) &&
           isValidBSTHelper(root.right, minValue: root.val, maxValue: maxValue)

  }

  func isValidBST(root: TreeNode?) -> Bool {
    return isValidBSTHelper(root, minValue: nil, maxValue: nil)
  }

  // MARK: -iterative

  func isValidBSTIterative(root: TreeNode?) -> Bool {

    let generator = BinaryTreeInorderTraversalGenerator(root: root)
    var value = generator.next()

    while value != nil {
      let nextValue = generator.next()
      if nextValue != nil && nextValue < value {
          return false
      }
      value = nextValue
    }

    return true
  }

}