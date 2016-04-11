/*
 
 136. (M) Single Number

 https://leetcode.com/problems/single-number/

 Given an array of integers, every element appears twice except for one. Find that single one.

 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 */


class SingleNumber_M136 {

  // MARK: - A ^ A ^ B = 0 ^ B = B
  func singleNumber(nums: [Int]) -> Int {
    var result = 0
    for num in nums {
      result = num ^ result
    }
    return result
  }

}