/*

114. (M) Flatten Binary Tree to Linked List My Submissions QuestionEditorial Solution

https://leetcode.com/problems/flatten-binary-tree-to-linked-list/
 
 Given a binary tree, flatten it to a linked list in-place.

 For example,
 Given

     1
    / \
   2   5
  / \   \
 3   4   6

The flattened tree should look like:
 
 1
  \
   2
    \
     3
      \
       4
        \
         5
          \
           6

*/

class FlattenBinaryTreeToLinkedList_M114 {

  func flatten(root: TreeNode?) {

    guard let root = root else {
      return
    }

    var stack = Stack<TreeNode>()
    stack.push(root)

    var parent: TreeNode? = nil

    while !stack.empty() {

      let node = stack.pop()

      if let right = node.right {
        stack.push(right)
      }

      if let left = node.left {
        stack.push(left)
      }

      if parent != nil {
        parent!.left = nil
        parent!.right = node
        parent = node
      } else {
        parent = root
      }
    }
  }

}
