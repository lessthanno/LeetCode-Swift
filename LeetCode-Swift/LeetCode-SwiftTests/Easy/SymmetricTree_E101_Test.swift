//
//  SymmetricTree_E101_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class SymmetricTree_E101_Test: XCTestCase {

  let problem = "SymmetricTree_E101_Test"

  func test001() {
    let input = TreeNode(1,
      left: TreeNode(2, right: TreeNode(3)),
      right: TreeNode(2, right: TreeNode(3)))

    let expected = false

    let answer = SymmetricTree_E101().isSymmetric(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test002() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(3), right: TreeNode(4)),
      right: TreeNode(2, left: TreeNode(4), right: TreeNode(3)))

    let expected = true

    let answer = SymmetricTree_E101().isSymmetric(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test003() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(3)),
      right: TreeNode(3, left: TreeNode(2)))

    let expected = false

    let answer = SymmetricTree_E101().isSymmetric(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test004() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(3)),
      right: TreeNode(3, left: TreeNode(2)))

    let expected = false

    let answer = SymmetricTree_E101().isSymmetricIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test005() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(3), right: TreeNode(4)),
      right: TreeNode(2, left: TreeNode(4), right: TreeNode(3)))

    let expected = true

    let answer = SymmetricTree_E101().isSymmetricIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test006() {
    let input = TreeNode(1,
      left: TreeNode(2, right: TreeNode(3)),
      right: TreeNode(2, right: TreeNode(3)))

    let expected = false

    let answer = SymmetricTree_E101().isSymmetricIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
