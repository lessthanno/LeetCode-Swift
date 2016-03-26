//
//  HouseRobberIII_M337_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/26/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class HouseRobberIII_M337_Test: XCTestCase {

  let problem = "HouseRobberIII_M337_Test"

  func test001() {

    let input = TreeNode(3,
        left: TreeNode(4, left: TreeNode(1), right: TreeNode(3)),
        right: TreeNode(5, right: TreeNode(1)))

    let expected: Int = 9

    let answer = HouseRobberIII_M337().rob(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {

    let input = TreeNode(3,
        left: TreeNode(2, right: TreeNode(3)),
        right: TreeNode(3, right: TreeNode(1)))

    let expected: Int = 7

    let answer = HouseRobberIII_M337().rob(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {

    let input = TreeNode(4,
      left: TreeNode(1),
      right: TreeNode(3))

    let expected: Int = 4

    let answer = HouseRobberIII_M337().rob(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test004() {

    let input = TreeNode(5,
      right: TreeNode(1))

    let expected: Int = 5

    let answer = HouseRobberIII_M337().rob(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
