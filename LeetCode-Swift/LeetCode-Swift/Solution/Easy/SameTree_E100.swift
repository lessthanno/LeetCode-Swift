/*

100. (E) Same Tree

Given two binary trees, write a function to check if they are equal or not.

Two binary trees are considered equal if they are structurally identical and the nodes have the same value.

*/

class SameTree_E100 {

// MARK: - iterative

  func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {

    if p == nil && q == nil {
      return true
    }

    guard let p = p, let q = q else {
      return false
    }

    var stack = Stack<(TreeNode, TreeNode)>()
    stack.push((p, q))

    while !stack.empty() {
      let (pNode, qNode) = stack.pop()

      if qNode.val != pNode.val {
        return false
      }

      let pLeft = pNode.left
      let qLeft = qNode.left

      if qLeft != nil && pLeft != nil {
        stack.push((pLeft!, qLeft!))
      } else if qLeft == nil && pLeft == nil {
        // nothing
      } else if qLeft == nil || pLeft == nil {
        return false
      }

      let pRight = pNode.right
      let qRight = qNode.right

      if qRight != nil && pRight != nil {
        stack.push((pRight!, qRight!))
      } else if qRight == nil && pRight == nil {
        // nothing
      } else if qRight == nil || pRight == nil {
        return false
      }
    }

    return true
  }

// MARK: - Recursive

  func isSameTreeRecursive(p: TreeNode?, _ q: TreeNode?) -> Bool {
    if let p = p, q = q {
      if p.val == q.val &&
        isSameTreeRecursive(p.left, q.left) &&
        isSameTreeRecursive(p.right, q.right) {
        return true
      }
      return false
    } else if p == nil && q == nil {
      return true
    }
    return false
  }

}