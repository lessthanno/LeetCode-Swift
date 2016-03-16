//
//  BalancedBinaryTree_E110_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/16/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BalancedBinaryTree_E110_Test: XCTestCase {

  let problem = "BalancedBinaryTree_E110_Test"

  func test001() {
    let input = TreeNode(6,
      left: TreeNode(2, left:  TreeNode(0), right: TreeNode(4)),
      right: TreeNode(8, left: TreeNode(7), right: TreeNode(9)))
    let expected = true

    let answer = BalancedBinaryTree_E110().isBalanced(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = TreeNode(6, right: TreeNode(8, left: TreeNode(7), right: TreeNode(9)))
    let expected = false

    let answer = BalancedBinaryTree_E110().isBalanced(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
