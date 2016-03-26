/*

199. (M) Binary Tree Right Side View My Submissions Question

https://leetcode.com/problems/binary-tree-right-side-view/

Given a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

For example:
Given the following binary tree,
     1            <---
   /   \
  2     3         <---
   \     \
    5     4       <---
You should return [1, 3, 4].

*/


class BinaryTreeRightSideView_M199 {

// MARK: - iterative

  func rightSideView(root: TreeNode?) -> [Int] {
    guard let root = root else {
      return []
    }

    var queue = Queue<TreeNode>()
    queue.add(root)
    var queueNext = Queue<TreeNode>()

    var resultLevel:[Int] = []
    var output: [[Int]] = []

    while !queue.empty() {

      for node in queue.items {
        resultLevel.append(node.val)

        if let left = node.left {
          queueNext.add(left)
        }

        if let right = node.right {
          queueNext.add(right)
        }
      }

      output.append(resultLevel)
      resultLevel.removeAll()
      queue = queueNext
      queueNext.items.removeAll()
    }

    
    return output.map { (levels) in
        return levels.last!
    }
  }


}