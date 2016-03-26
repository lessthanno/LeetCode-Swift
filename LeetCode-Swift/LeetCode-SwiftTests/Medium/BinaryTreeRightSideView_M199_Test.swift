//
//  BinaryTreeRightSideView_M199_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/26/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreeRightSideView_M199_Test: XCTestCase {

  let problem = "BinaryTreeRightSideView_M199_Test"

  func test001() {
    let input = TreeNode(1,
        left: TreeNode(2, left: TreeNode(1), right: TreeNode(5)),
        right: TreeNode(3, left: TreeNode(4)))

    let expected: [Int] = [1, 3, 4]

    let answer = BinaryTreeRightSideView_M199().rightSideView(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(1), right: TreeNode(5)),
      right: TreeNode(3))

    let expected: [Int] = [1, 3, 5]

    let answer = BinaryTreeRightSideView_M199().rightSideView(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
