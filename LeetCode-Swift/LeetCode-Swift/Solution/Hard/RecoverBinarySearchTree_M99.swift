/*
 
99. (H) Recover Binary Search Tree My Submissions QuestionEditorial Solution

https://leetcode.com/problems/recover-binary-search-tree/

Two elements of a binary search tree (BST) are swapped by mistake.

Recover the tree without changing its structure.

*/

class RecoverBinarySearchTree_H99 {

  func pushAllLeftNodes(root: TreeNode?, inout stack: Stack<TreeNode>) {
    var node = root
    while node != nil {
      stack.push(node!)
      node = node!.left
    }
  }

  func recoverTree(root: TreeNode?) {

    var stack = Stack<TreeNode>()
    pushAllLeftNodes(root, stack: &stack)

    var wrongNode1: TreeNode? = nil
    var wrongNode2: TreeNode? = nil

    var previousNode = stack.pop()
    pushAllLeftNodes(previousNode.right, stack: &stack)

    while !stack.empty() {

      let node = stack.pop()
      pushAllLeftNodes(node.right, stack: &stack)

      // second wrong position node
      if wrongNode1 != nil && previousNode.val > node.val {
        wrongNode2 = node
      }

      // first wrong position node
      if wrongNode1 == nil && previousNode.val > node.val {
        wrongNode1 = previousNode
        wrongNode2 = node
      }

      previousNode = node
    }

    if let wrongNode1Val = wrongNode1?.val, wrongNode2Val = wrongNode2?.val {
      wrongNode1!.val = wrongNode2Val
      wrongNode2!.val = wrongNode1Val
    }

  }

}