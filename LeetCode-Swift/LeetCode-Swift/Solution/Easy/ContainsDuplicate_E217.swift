/*

217. (E) Contains Duplicate

https://leetcode.com/problems/contains-duplicate/

Given an array of integers, find if the array contains any duplicates. 
Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

*/


class ContainsDuplicate_E217 {

  func containsDuplicate(num: [Int]) -> Bool {
    let set = Set(num)
    return num.count != 0 && set.count != num.count
  }

}