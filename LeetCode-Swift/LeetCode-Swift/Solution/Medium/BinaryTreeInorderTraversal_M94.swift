/*

94. (M) Binary Tree Inorder Traversal

https://leetcode.com/problems/binary-tree-inorder-traversal/

Given a binary tree, return the inorder traversal of its nodes' values.

For example:
Given binary tree {1,#,2,3},
1
\
2
/
3
return [1,3,2].

Note: Recursive solution is trivial, could you do it iteratively?

*/


public class BinaryTreeInorderTraversalGenerator: GeneratorType {

  typealias StackType = Stack<TreeNode>

  var stack: StackType
  var currentNode: TreeNode?

  init(currentNode: TreeNode?) {
    self.stack = StackType()
    self.currentNode = currentNode
  }

  public typealias Element = Int

  public func next() -> Element? {

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

}


class BinaryTreeInorderTraversal_M94 {

  // iterative by GeneratorType
  func inorderTraversal(root: TreeNode?) -> [Int] {

    let generator = BinaryTreeInorderTraversalGenerator(currentNode: root)

    var result = Array<Int>()

    var node = generator.next()
    while node != nil {
      result.append(node!)
      node = generator.next()
    }

    return result
  }

  // recursive
  func inorderTraversalRecursive(root: TreeNode?) -> [Int] {
    var result = Array<Int>()
    if let root = root {
      let left = inorderTraversalRecursive(root.left)
      let right = inorderTraversalRecursive(root.right)
      result.appendContentsOf(left)
      result.append(root.val)
      result.appendContentsOf(right)
    }
    return result
  }

}
