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

  var stack = Stack<TreeNode>()

  init(root: TreeNode) {
    self.stack.push(root)
  }

  public typealias Element = Int

  private func hasNext() -> Bool {
    return !self.stack.empty()
  }

  public func next() -> Element? {

    if hasNext() {
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

  // MARK: - Iterative by SequenceType

  func preorderTraversal(root: TreeNode?) -> [Int] {
    guard let root = root else {
      return []
    }

    return root.map { $0 }
  }

  // MARK: - Recursive

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

  // MARK: - Morris

  func preorderTraversalMorris(root: TreeNode?) -> [Int] {
    guard let root = root else {
      return []
    }

    var result: [Int] = []

    var current: TreeNode? = root
    while current != nil {

      guard let left = current!.left else {
        // 1.如果当前节点的左孩子为空，则输出当前节点，并将其右孩子作为当前节点。
        result.append(current!.val)
        current = current!.right
        continue
      }

      // 2. 如果当前节点的左孩子不为空，在当前节点的左子树中找到当前节点在中序遍历下的前驱节点。
      var preNode = left
      while preNode.right != nil && preNode.right !== current {
        preNode = preNode.right!
      }

      if let _ = preNode.right {
        //2.2. 如果前驱节点的右孩子为当前节点，将它的右孩子重新设为空（恢复树的形状）。当前节点更新为当前节点的右孩子。
        preNode.right = nil
        current = current!.right
      } else {
        //2.1. 如果前驱节点的右孩子为空，将它的右孩子设置为当前节点（标记当前节点）。输出当前节点。当前节点更新为当前节点的左孩子。
        preNode.right = current
        result.append(current!.val)
        current = current!.left
      }


    }

    return result
  }

}