/*

283. (E) Move Zeros

https://leetcode.com/problems/move-zeroes/

Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

Note:
  1. You must do this in-place without making a copy of the array.
  2. Minimize the total number of operations.

*/

class MoveZeroes_E283 {

  func moveZeroes(inout nums: [Int]) {
    let count = nums.count
    var pos = 0
    var sum = 0
    while pos < count && sum < count {
      if nums[pos] == 0 {
        nums.removeAtIndex(pos)
        nums.insert(0, atIndex: count - 1)
      } else {
        pos += 1
      }
      sum += 1
    }
  }

}