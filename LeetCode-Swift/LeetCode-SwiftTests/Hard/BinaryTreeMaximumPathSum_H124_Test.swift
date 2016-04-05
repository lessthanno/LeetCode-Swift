//
//  BinaryTreeMaximumPathSum_H124_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/5/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreeMaximumPathSum_H124_Test: XCTestCase {

  let problem = "BinaryTreeMaximumPathSum_H124_Test"

  func test001() {
    let input = TreeNode(5,
                         left: TreeNode(8, left: TreeNode(25), right: TreeNode(24)),
                         right: TreeNode(4, right: TreeNode(13)))
    let expected = 57

    let answer = BinaryTreeMaximumPathSum_H124().maxPathSum(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test002() {
    let input = TreeNode(1,
                         left: TreeNode(3),
                         right: TreeNode(2))
    let expected = 6

    let answer = BinaryTreeMaximumPathSum_H124().maxPathSum(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input = TreeNode(-3)
    let expected = -3

    let answer = BinaryTreeMaximumPathSum_H124().maxPathSum(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test004() {
    let input = TreeNode(1, left: TreeNode(2))
    let expected = 3

    let answer = BinaryTreeMaximumPathSum_H124().maxPathSum(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test005() {
    let input = TreeNode(2, left: TreeNode(-1))
    let expected = 2

    let answer = BinaryTreeMaximumPathSum_H124().maxPathSum(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
