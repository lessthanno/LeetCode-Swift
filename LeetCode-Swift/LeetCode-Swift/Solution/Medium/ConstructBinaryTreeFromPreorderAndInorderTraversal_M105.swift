/*

105. (M) Construct Binary Tree from Preorder and Inorder Traversal

https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/

 Given preorder and inorder traversal of a tree, construct the binary tree.

 Note:
 You may assume that duplicates do not exist in the tree.

*/

class ConstructBinaryTreeFromPreorderAndInorderTraversal_M105 {

// MARK: - recursive, this solution will raise time limit error on LeetCode OJ.

  func buildTree(preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    if preorder.count == 0 || inorder.count == 0 {
      return nil
    }

    let rootVal = preorder[0]

    if let index = inorder.indexOf(rootVal) {
      let root = TreeNode(rootVal)

      if index > 0 {
        let leftPreorder = Array(preorder[1...index])
        let leftInorder = Array(inorder[0...(index-1)])
        let left = buildTree(leftPreorder, leftInorder)
        root.left = left
      }

      let count = inorder.count
      if index < count - 1 {
        let rightPreorder = Array(preorder[index+1...count-1])
        let rightInorder = Array(inorder[index+1...count-1])
        let right = buildTree(rightPreorder, rightInorder)
        root.right = right
      }

      return root
    }

    return nil

  }

// MARK: - iterative

  func buildTreeIterative(preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    if preorder.count == 0 || inorder.count == 0 {
      return nil
    }

    let root = TreeNode(preorder[0])


    var stack = Stack<(TreeNode, [Int], [Int])>()
    stack.push((root, preorder, inorder))

    while !stack.empty() {
      let (node, currentPreorder, currentInorder) = stack.pop()

      let val = node.val
      guard let index = currentInorder.indexOf(val) else {
        return nil
      }

      if index > 0 {
        let leftPreorder = Array(currentPreorder[1...index])
        let leftInorder = Array(currentInorder[0...(index-1)])
        if leftPreorder.count > 0 {
          let left = TreeNode(leftPreorder[0])
          node.left = left
          stack.push((left, leftPreorder, leftInorder))
        }
      }

      let count = currentPreorder.count
      if index < count - 1 {
        let rightPreorder = Array(currentPreorder[index+1...count-1])
        let rightInorder = Array(currentInorder[index+1...count-1])
        if rightPreorder.count > 0 {
          let right = TreeNode(rightPreorder[0])
          node.right = right
          stack.push((right, rightPreorder, rightInorder))
        }
      }
    }

    return root
  }

}