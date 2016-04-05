/*

236. (M) Lowest Common Ancestor of a Binary Tree

https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
 
 Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree.

 According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes v and w as the lowest node in T that has both v and w as descendants (where we allow a node to be a descendant of itself).”

        _______3______
       /              \
    ___5__          ___1__
   /      \        /      \
  6       _2_      0       8
         /   \
         7    4

 For example, the lowest common ancestor (LCA) of nodes 5 and 1 is 3. 
 Another example is LCA of nodes 5 and 4 is 5, since a node can be a descendant of itself according to the LCA definition.

*/


extension TreeNode {


  func hasChild(p: TreeNode) -> Bool {

    if let left = self.left where left == p {
      return true
    }

    if let right = self.right where right == p {
      return true
    }

    if let left = self.left where left.hasChild(p) {
      return true
    }

    if let right = self.right where right.hasChild(p) {
      return true
    }

    return false
  }

}


class LowestCommonAncestorOfBinaryTree_M236 {

  func lowestCommonAncestor(root: TreeNode?, p: TreeNode, q: TreeNode) -> TreeNode? {

    guard let root = root else {
      return nil
    }

    var current = root

    while current.hasChild(p) && current.hasChild(q) {

      if let left = current.left where left.hasChild(p) && left.hasChild(q) {
        current = left
        continue
      }

      if let right = current.right where right.hasChild(p) && right.hasChild(q) {
        current = right
        continue
      }

      return current
    }

    return current
  }

  // MARK: - recursive

  func lowestCommonAncestorRecursive(root: TreeNode?, p: TreeNode, q: TreeNode) -> TreeNode? {

    guard let root = root else {
      return nil
    }

    if root == p || root == q {
      return root
    }

    if p.hasChild(q) {
      return p
    }
    if q.hasChild(p) {
      return q
    }


    if let left = root.left where left.hasChild(p) && left.hasChild(q) {
      return lowestCommonAncestorRecursive(left, p: p, q: q)
    }

    if let right = root.right where right.hasChild(p) && right.hasChild(q) {
      return lowestCommonAncestorRecursive(right, p: p, q: q)
    }

    return root
  }
}