/*

337. (M) House Robber III My Submissions Question

https://leetcode.com/problems/house-robber-iii/

The thief has found himself a new place for his thievery again. 
There is only one entrance to this area, called the "root." Besides the root, each house has one and only one parent house. 
After a tour, the smart thief realized that "all houses in this place forms a binary tree".
It will automatically contact the police if two directly-linked houses were broken into on the same night.

Determine the maximum amount of money the thief can rob tonight without alerting the police.

Example 1:
   3
  / \
 2   3
  \   \
   3   1
Maximum amount of money the thief can rob = 3 + 3 + 1 = 7.

Example 2:
    3
   / \
  4   5
 / \   \
1   3   1
Maximum amount of money the thief can rob = 4 + 5 = 9.

*/

class HouseRobberIII_M337 {

  func robHelp(root: TreeNode?) -> (Int, Int) {
    guard let root = root else {
      return (0, 0)
    }

    let (leftRootRob, leftChildRob) = robHelp(root.left)
    let (rightRootRob, rightChildRob) = robHelp(root.right)

    return (max(leftChildRob + rightChildRob + root.val, leftRootRob + rightRootRob), leftRootRob + rightRootRob)
  }

  func rob(root: TreeNode?) -> Int {
    let (rootRob, _)  = robHelp(root)
    return rootRob
  }

}