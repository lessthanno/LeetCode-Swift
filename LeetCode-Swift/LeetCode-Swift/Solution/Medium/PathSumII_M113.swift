/*

113. (M) Path Sum II My Submissions QuestionEditorial Solution

https://leetcode.com/problems/path-sum-ii/

Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.

For example:
Given the below binary tree and sum = 22,

       5
      / \
     4   8
    /   / \
   11  13  4
  /  \    / \
 7    2  5   1
 
return
 
 [
 [5,4,11,2],
 [5,8,4,5]
 ]

*/


class PathSumII_M113 {

  func pathSum(root: TreeNode?, _ sum: Int) -> [[Int]] {

    guard let root = root else {
      return []
    }

    typealias StackType = Stack<(TreeNode, [Int])>

    var pathSum: [[Int]] = []
    var stack = StackType()
    stack.push((root, [root.val]))

    while !stack.empty() {

      let (node, path) = stack.pop()

      if node.left == nil && node.right == nil {
        pathSum.append(path)
      }

      if let right = node.right {
        var copy = path
        copy.append(right.val)
        stack.push((right, copy))
      }

      if let left = node.left {
        var copy = path
        copy.append(left.val)
        stack.push((left, copy))
      }

    }

    return pathSum.filter { path in
      let onePathSum = path.reduce(0) { $0 + $1 }
      return sum == onePathSum
    }

  }

}