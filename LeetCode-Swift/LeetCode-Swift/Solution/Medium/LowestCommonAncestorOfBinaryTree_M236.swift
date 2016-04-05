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


  func isChild(p: TreeNode) -> Bool {

    if let left = self.left where left == p {
      return true
    }

    if let right = self.right where right == p {
      return true
    }

    if let left = self.left where left.isChild(p) {
      return true
    }

    if let right = self.right where right.isChild(p) {
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

    while current.isChild(p) && current.isChild(q) {

      if let left = current.left where left.isChild(p) && left.isChild(q) {
        current = left
        continue
      }

      if let right = current.right where right.isChild(p) && right.isChild(q) {
        current = right
        continue
      }

      return current
    }

    return current
  }
}