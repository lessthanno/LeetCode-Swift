//
//  SumRootToLeafNumbers_M129_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class SumRootToLeafNumbers_M129_Test: XCTestCase {

  let problem = "SumRootToLeafNumbers_M129_Test"

  func test001() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(1), right: TreeNode(5)),
      right: TreeNode(3, left: TreeNode(4)))

    let expected = 380

    let answer = SumRootToLeafNumbers_M129().sumNumbers(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = TreeNode(4,
      left: TreeNode(9, left: TreeNode(1)),
      right: TreeNode(0))

    let expected = 531

    let answer = SumRootToLeafNumbers_M129().sumNumbers(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
