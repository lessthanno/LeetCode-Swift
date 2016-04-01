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

  var stack: StackType = StackType()

  init(root: TreeNode?) {
    pushAllNodes(root)
  }

  private func pushAllNodes(node: TreeNode?) {
    var theNode = node
    while theNode != nil {
      stack.push(theNode!)
      theNode = theNode!.left
    }
  }

  private func hasNext() -> Bool {
    return !self.stack.empty()
  }

  public typealias Element = Int

  public func next() -> Element? {

    if hasNext() {
      let visitedNode = stack.pop()
      pushAllNodes(visitedNode.right)
      return visitedNode.val
    }
    return nil
  }

}


class BinaryTreeInorderTraversal_M94 {

// MARK: - iterative by GeneratorType

  func inorderTraversal(root: TreeNode?) -> [Int] {

    let generator = BinaryTreeInorderTraversalGenerator(root: root)

    var result = Array<Int>()

    var value = generator.next()
    while value != nil {
      result.append(value!)
      value = generator.next()
    }

    return result
  }

// MARK: - recursive

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
