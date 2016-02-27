/*

144. (M) Binary Tree Preorder Traversal

https://leetcode.com/problems/binary-tree-preorder-traversal/

Given a binary tree, return the preorder traversal of its nodes' values.

For example:
Given binary tree {1,#,2,3},
1
\
2
/
3
return [1,2,3].

Note: Recursive solution is trivial, could you do it iteratively?

*/


public class BinaryTreePreorderTravesalGenerator: GeneratorType {

  typealias StackType = Stack<TreeNode>

  var stack: StackType

  init(root: TreeNode) {
    self.stack = StackType()
    self.stack.push(root)
  }

  public typealias Element = Int

  public func next() -> Element? {

    if !self.stack.empty() {
      let node = self.stack.pop()

      if let right = node.right {
        stack.push(right)
      }

      if let left = node.left {
        stack.push(left)
      }

      return node.val
    }
    
    return nil
  }
}

extension TreeNode: SequenceType {

  public func generate() -> BinaryTreePreorderTravesalGenerator {
    return BinaryTreePreorderTravesalGenerator(root: self)
  }
}

class BinaryTreePreorderTraversal_M144 {

  // iterative by SequenceType
  func preorderTraversal(root: TreeNode?) -> [Int] {
    if let root = root {
      return root.map { $0 }
    }
    return []
  }

  // recursive
  func preorderTraversalRecursive(root: TreeNode?) -> [Int] {
    var result = Array<Int>()
    if let root = root {
      result.append(root.val)
      let left = preorderTraversalRecursive(root.left)
      let right = preorderTraversalRecursive(root.right)
      result.appendContentsOf(left)
      result.appendContentsOf(right)
    }
    return result
  }

}