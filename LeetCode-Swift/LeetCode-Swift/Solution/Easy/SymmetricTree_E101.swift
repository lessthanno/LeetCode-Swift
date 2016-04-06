/*

101. (E) Symmetric Tree

https://leetcode.com/problems/symmetric-tree/

Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree is symmetric:

    1
   / \
  2   2
 / \ / \
3  4 4  3

But the following is not:
   1
  / \
 2   2
  \   \
   3   3

Note:
Bonus points if you could solve it both recursively and iteratively.

*/

public class BinaryTreePostorderElementTravesalGenerator: GeneratorType {

  typealias StackType = Stack<TreeNode>

  var stack1: StackType
  var stack2: StackType

  init(root: TreeNode) {
    self.stack1 = StackType()
    self.stack2 = StackType()
    self.stack1.push(root)
  }

  public typealias Element = TreeNode

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
      return stack2.pop()
    }
    
    return nil
  }
  
}


class SymmetricTree_E101 {

// MARK: - recursive

  func symmetric(root: TreeNode?) -> TreeNode? {
    guard let root = root else {
      return nil
    }

    let leftSymmetric = symmetric(root.left)
    let rightSymmetric = symmetric(root.right)

    root.left = rightSymmetric
    root.right = leftSymmetric
    return root

  }

  func isSymmetric(root: TreeNode?) -> Bool {
    guard let root = root else {
      return true
    }

    let left = symmetric(root.left)

    return left === root.right

  }

// MARK: - iterative

  func symmetricChild(inout root: TreeNode) {
    let left = root.left
    root.left = root.right
    root.right = left
  }

  func isSymmetricIterative(root: TreeNode?) -> Bool {

    guard let root = root else {
      return true
    }

    if let left = root.left {
      let generator = BinaryTreePostorderElementTravesalGenerator(root: left)

      var node = generator.next()
      while node != nil {
        symmetricChild(&node!)
        node = generator.next()
      }
    }

    return root.left == root.right
  }

}