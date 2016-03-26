/*

173. (M) Binary Search Tree Iterator

https://leetcode.com/problems/binary-search-tree-iterator/

Implement an iterator over a binary search tree (BST). Your iterator will be initialized with the root node of a BST.

Calling next() will return the next smallest number in the BST.

Note: next() and hasNext() should run in average O(1) time and uses O(h) memory, where h is the height of the tree.

*/

/*
It's actually the BinaryTreeInorderTraversalGenerator in Solution M94
*/
class BinarySearchTreeIterator_M173 {

  typealias StackType = Stack<TreeNode>

  var stack: StackType
  var currentNode: TreeNode?

  init(root: TreeNode?) {
    self.currentNode = root
    self.stack = StackType()
  }

  func next() -> Int? {

    while currentNode != nil {
      stack.push(currentNode!)
      currentNode = currentNode!.left
    }

    if !stack.empty() {
      let visitedNode = stack.pop()
      currentNode = visitedNode.right
      return visitedNode.val
    }
    return nil
  }

  func hasNext() -> Bool {
    if currentNode == nil && stack.empty() {
      return false
    }
    return true
  }  
}