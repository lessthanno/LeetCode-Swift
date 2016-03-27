//
//  MinimumDepthOfBinary_E111_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class MinimumDepthOfBinaryTree_E111_Test: XCTestCase {

  let problem = "MinimumDepthOfBinaryTree_E111_Test"

  func test001() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(1), right: TreeNode(5)),
      right: TreeNode(3))

    let expected: Int = 2

    let answer = MinimumDepthOfBinaryTree_E111().minDepth(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
