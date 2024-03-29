/*

145. (M) Binary Tree Postorder Traversal

https://leetcode.com/problems/binary-tree-postorder-traversal/

Given a binary tree, return the postorder traversal of its nodes' values.

For example:
Given binary tree {1,#,2,3},
1
\
2
/
3
return [3,2,1].

Note: Recursive solution is trivial, could you do it iteratively?

*/


public class BinaryTreePostorderTravesalGenerator: GeneratorType {

  typealias StackType = Stack<TreeNode>

  var stack1: StackType
  var stack2: StackType

  init(root: TreeNode) {
    self.stack1 = StackType()
    self.stack2 = StackType()
    self.stack1.push(root)
  }

  public typealias Element = Int

  public func next() -> Element? {

    while !stack1.empty() {

      let node = stack1.pop()
      stack2.push(node)

      if let left = node.left {
        stack1.push(left)
      }

      if let right = node.right {
        stack1.push(right)
      }
      
    }

    if !stack2.empty() {
      return stack2.pop().val
    }

    return nil
  }

}


class BinaryTreePostorderTraversal_H145 {

// MARK: - iterative by GeneratorType

  func postorderTraversal(root: TreeNode?) -> [Int] {

    guard let root = root else {
      return []
    }

    let generator = BinaryTreePostorderTravesalGenerator(root: root)

    var result = Array<Int>()

    var node = generator.next()
    while node != nil {
      result.append(node!)
      node = generator.next()
    }

    return result
  }

// MARK: - recursive

  func postorderTraversalRecursive(root: TreeNode?) -> [Int] {
    var result = Array<Int>()
    if let root = root {
      let left = postorderTraversalRecursive(root.left)
      let right = postorderTraversalRecursive(root.right)
      result.appendContentsOf(left)
      result.appendContentsOf(right)
      result.append(root.val)
    }
    return result
  }
  
}