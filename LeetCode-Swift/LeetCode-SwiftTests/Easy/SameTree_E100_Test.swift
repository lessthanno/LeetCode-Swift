//
//  SameTree_E100_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class SameTree_E100_Test: XCTestCase {

  let problem = "SameTree_E100"

  func test001() {
    let input1 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))

    let input2 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))

    let expected = true

    let answer = SameTree_E100().isSameTreeRecursive(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input1 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))

    let input2 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 5, left: TreeNode(val: 3), right: TreeNode(val: 4)))

    let expected = false

    let answer = SameTree_E100().isSameTreeRecursive(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input1 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))

    let input2 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))

    let expected = true

    let answer = SameTree_E100().isSameTree(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }


  func test004() {
    let input1 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))

    let input2 = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 5, left: TreeNode(val: 3), right: nil))

    let expected = false

    let answer = SameTree_E100().isSameTree(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }

  func test005() {
    let input1 = TreeNode(val: 1,
      left: TreeNode(val: 5),
      right: TreeNode(val: 15))

    let input2 = TreeNode(val: 1,
      left: TreeNode(val: 5, left: nil, right: TreeNode(val: 15)),
      right: nil)

    let expected = false

    let answer = SameTree_E100().isSameTree(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }

  func test006() {
    let input1 = TreeNode(val: 1,
      left: TreeNode(val: 1),
      right: nil)

    let input2 = TreeNode(val: 1,
      left: nil,
      right: TreeNode(val: 1))

    let expected = false

    let answer = SameTree_E100().isSameTree(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }


  func test007() {
    let input1 = TreeNode(val: 0,
      left: TreeNode(val: -5),
      right: nil)

    let input2 = TreeNode(val: 0,
      left: TreeNode(val: -8),
      right: nil)

    let expected = false

    let answer = SameTree_E100().isSameTree(input1, input2)

    LCSAssert(problem, input: "input1:\(input1), input2:\(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }

}
