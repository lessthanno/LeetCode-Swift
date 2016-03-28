/*

213. (M) House Robber II

https://leetcode.com/problems/house-robber-ii/

Note: This is an extension of House Robber.

After robbing those houses on that street, the thief has found himself a new place for his thievery so that he will not get too much attention. This time, all houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, the security system for these houses remain the same as for those in the previous street.

Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.

*/

class HouseRobberII_M213 {

  func rob(nums:[Int], start: Int, end: Int) -> Int {
    if start > end {
      return 0
    } else if end >= nums.count {
      return 0
    } else if start < 0 {
      return 0
    }
    var prev2 = 0
    var prev = 0
    for var i = start; i <= end; i += 1 {
      let value = max(prev2 + nums[i], prev)
      prev2 = prev
      prev = value
    }
    return prev

  }

  func rob(nums:[Int]) -> Int {

    if nums.count == 0 {
      return 0
    } else if nums.count == 1 {
      return nums[0]
    } else  if nums.count == 2 {
      return max(nums[0], nums[1])
    }


    let firstStart = rob(nums, start: 0, end:  nums.count - 2)
    let secondStart = rob(nums, start: 1, end: nums.count - 1)
    return max(firstStart, secondStart)
  }

}