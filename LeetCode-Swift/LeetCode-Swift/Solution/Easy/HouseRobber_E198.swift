/*

198. (E) House Robber

https://leetcode.com/problems/house-robber/

You are a professional robber planning to rob houses along a street. 
Each house has a certain amount of money stashed, 
the only constraint stopping you from robbing each of them is that adjacent houses have security system connected 
and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given a list of non-negative integers representing the amount of money of each house, 
determine the maximum amount of money you can rob tonight without alerting the police.

*/

class HouseRobber_E198 {

  func rob(nums: [Int]) -> Int {
    if nums.count == 0 {
      return 0
    } else if nums.count == 1 {
      return nums[0]
    } else  if nums.count == 2 {
      return max(nums[0], nums[1])
    } else {
      var prev2 = nums[0]
      var prev = max(nums[0], nums[1])
      for var i = 2; i < nums.count; i++ {
        let value = max(prev2 + nums[i], prev)
        prev2 = prev
        prev = value
      }
      return prev
    }

  }

}