//
//  ValidateBinarySearchTree_M98_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/1/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ValidateBinarySearchTree_M98_Test: XCTestCase {

  let problem = "ValidateBinarySearchTree_M98_Test"

  // MARK: - recursive

  func test001() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))
    let expected = true

    let answer = ValidateBinarySearchTree_M98().isValidBST(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = TreeNode(5,
                         left: TreeNode(4, left: TreeNode(6)),
                         right: TreeNode(8, left: TreeNode(13)))
    let expected = false

    let answer = ValidateBinarySearchTree_M98().isValidBST(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input = TreeNode(10,
                         left: TreeNode(5, left: TreeNode(7)),
                         right: TreeNode(15, left: TreeNode(6), right: TreeNode(20)))
    let expected = false

    let answer = ValidateBinarySearchTree_M98().isValidBST(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  // MARK: - iterative

  func test011() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))
    let expected = true

    let answer = ValidateBinarySearchTree_M98().isValidBSTIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test012() {
    let input = TreeNode(5,
                         left: TreeNode(4, left: TreeNode(6)),
                         right: TreeNode(8, left: TreeNode(13)))
    let expected = false

    let answer = ValidateBinarySearchTree_M98().isValidBSTIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test013() {
    let input = TreeNode(10,
                         left: TreeNode(5, left: TreeNode(7)),
                         right: TreeNode(15, left: TreeNode(6), right: TreeNode(20)))
    let expected = false

    let answer = ValidateBinarySearchTree_M98().isValidBSTIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
