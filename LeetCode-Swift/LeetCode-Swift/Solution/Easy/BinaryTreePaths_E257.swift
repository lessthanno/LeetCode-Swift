/*

257. (E) Binary Tree Paths My Submissions QuestionEditorial Solution

https://leetcode.com/problems/binary-tree-paths/

Given a binary tree, return all root-to-leaf paths.

For example, given the following binary tree:

    1
   / \
  2   3
   \
    5
 
All root-to-leaf paths are:

 ["1->2->5", "1->3"]

*/


class BinaryTreePaths_E257 {

  func binaryTreePaths(root: TreeNode?) -> [String] {
    guard let root = root else {
      return []
    }

    var stack = Stack<(TreeNode, String)>()
    stack.push((root, "\(root.val)"))

    var allPaths: [String] = []
    while !stack.empty() {

      let (node, path) = stack.pop()

      if node.left == nil && node.right == nil {
        allPaths.append(path)
      }

      if let left = node.left {
        let newPath = "\(path)->\(left.val)"
        stack.push((left, newPath))
      }

      if let right = node.right {
        let newPath = "\(path)->\(right.val)"
        stack.push((right, newPath))
      }

    }

    return allPaths

  }
}