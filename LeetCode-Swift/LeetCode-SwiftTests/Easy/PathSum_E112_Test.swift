//
//  PathSum_E112_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class PathSum_E112_Test: XCTestCase {

  let problem = "SymmetricTree_E101_Test"

  func test001() {

    let input1 = TreeNode(1,
      left: TreeNode(2, right: TreeNode(3)),
      right: TreeNode(2, right: TreeNode(3)))
    let input2 = 6

    let expected = true

    let answer = PathSum_E112().hasPathSum(input1, input2)

    LCSAssert(problem, input: "\(input1)+\(input2)" , answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {

    let input1 = TreeNode(1,
      left: TreeNode(2, right: TreeNode(3)),
      right: TreeNode(2))
    let input2 = 7

    let expected = false

    let answer = PathSum_E112().hasPathSum(input1, input2)

    LCSAssert(problem, input: "\(input1)+\(input2)" , answer: answer, expected: expected, judge: { answer == expected })
  }


}
