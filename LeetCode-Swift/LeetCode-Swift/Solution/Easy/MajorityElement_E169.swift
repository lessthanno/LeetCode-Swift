/*

169. (E) Majority Element

https://leetcode.com/problems/majority-element/

Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

You may assume that the array is non-empty and the majority element always exist in the array.

*/


class MajorityElement_E169 {

  func majorityElement(nums: [Int]) -> Int {
    var res = nums[0]
    var counter = 1

    for num in nums {
      if res == num {
        counter += 1
      } else {
        counter -= 1
      }

      if counter == 0 {
        res = num
        counter = 1
      }
    }
    return res
  }
}