//
//  BinarySearchTreeIterator_M173_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinarySearchTreeIterator_M173_Test: XCTestCase {

  let problem = "BinarySearchTreeIterator_M173"

  func test001() {

    let input = TreeNode(val: 5,
      left: TreeNode(val: 3, left:  TreeNode(val: 2), right: TreeNode(val: 4)),
      right: TreeNode(val: 8, left: TreeNode(val: 6), right: TreeNode(val: 9)))
    let expected = [2, 3, 4, 5, 6, 8, 9]

    var answer = [Int]()
    let iterator = BinarySearchTreeIterator_M173(root: input)
    while iterator.hasNext() {
      answer.append(iterator.next()!)
    }

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }
}
