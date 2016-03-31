/*

106. (M) Construct Binary Tree from Inorder and Postorder Traversal My Submissions QuestionEditorial Solution

https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/

 Given inorder and postorder traversal of a tree, construct the binary tree.

 Note:
 You may assume that duplicates do not exist in the tree.

*/

class ConstructBinaryTreeFromInorderAndPostorderTraversal_M106 {

  // MARK: - iterative

  func buildTree(inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    if postorder.count == 0 || inorder.count == 0 {
      return nil
    }

    let rootVal = postorder.last!

    let root = TreeNode(rootVal)
    var stack = Stack<(TreeNode, [Int], [Int])>()
    stack.push((root, inorder, postorder))

    while !stack.empty() {

      let (node, currentInorder, currentPostorder) = stack.pop()
      let nodeVal = node.val
      guard let index = currentInorder.indexOf(nodeVal) else {
        return nil
      }

      if index > 0 {
        let leftInorder = Array(currentInorder[0...index-1])
        let leftPostorder = Array(currentPostorder[0...index-1])

        if leftPostorder.count > 0 {
          let left = TreeNode(leftPostorder.last!)
          node.left = left
          stack.push((left, leftInorder, leftPostorder))
        }
      }

      let count = currentInorder.count
      if index < count - 1 {
        let rightInorder = Array(currentInorder[index+1...count-1])
        let rightPostorder = Array(currentPostorder[index...count-2])
        if rightPostorder.count > 0 {
          let right = TreeNode(rightPostorder.last!)
          node.right = right
          stack.push((right, rightInorder, rightPostorder))
        }
      }
    }

    return root
  }

  // MARK: - recursive

  func buildTreeRecursive(inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    if postorder.count == 0 || inorder.count == 0 {
      return nil
    }

    let rootVal = postorder.last!
    let root = TreeNode(rootVal)
    guard let index = inorder.indexOf(rootVal) else {
      return nil
    }

    if index > 0 {
      let leftInorder = Array(inorder[0...index-1])
      let leftPostorder = Array(postorder[0...index-1])
      root.left = buildTreeRecursive(leftInorder, leftPostorder)
    }

    let count = inorder.count
    if index < count - 1 {
      let rightInorder = Array(inorder[index+1...count-1])
      let rightPostorder = Array(postorder[index...count-2])
      root.right = buildTreeRecursive(rightInorder, rightPostorder)
    }

    return root
  }

}