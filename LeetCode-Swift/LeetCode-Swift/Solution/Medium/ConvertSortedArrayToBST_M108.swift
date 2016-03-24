/*

108. (M) Convert Sorted Array to Binary Search Tree My Submissions Question

https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

Subscribe to see which companies asked this question

*/

class ConvertSortedArrayToBST_M108 {

  func sortedArrayToBST(nums: [Int]) -> TreeNode? {
    if nums == [] {
      return nil
    }
    else if nums.count == 1 {
      return TreeNode(nums[0])
    }
    else if nums.count == 2 {
      let treeNode = TreeNode(nums[1])
      treeNode.left = TreeNode(nums[0])
      return treeNode
    }

    let middle = nums.count / 2
    let treeNode = TreeNode(nums[middle])
    treeNode.left = sortedArrayToBST(Array(nums[0...middle-1]))
    treeNode.right = sortedArrayToBST(Array(nums[middle+1...nums.count-1]))
    return treeNode
  }

}