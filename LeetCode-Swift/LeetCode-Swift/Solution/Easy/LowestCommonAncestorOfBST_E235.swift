/*

235. (E) Lowest Common Ancestor of a Binary Search Tree My Submissions Question

https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes v and w as the lowest node in T that has both v and w as descendants (where we allow a node to be a descendant of itself).”

       _______6______
      /              \
   ___2__          ___8__
  /      \        /      \
  0      4       7       9
 /  \
3   5

For example, the lowest common ancestor (LCA) of nodes 2 and 8 is 6. 
Another example is LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.

*/


class LowestCommonAncestorOfBST_E235 {

  func lowestCommonAncestor(root: TreeNode?, p: TreeNode?, q: TreeNode?) -> TreeNode? {
    guard let root = root, p = p, q = q else {
      return nil
    }

    if root.val > p.val && root.val > q.val {
      return lowestCommonAncestor(root.left, p: p, q: q)
    } else if root.val < p.val && root.val < q.val {
      return lowestCommonAncestor(root.right, p: p, q: q)
    } else {
      return root
    }
  }
}