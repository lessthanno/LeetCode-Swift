//
//  MaximumDepthOfBinaryTree_E104_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class MaximumDepthOfBinaryTree_E104_Test: XCTestCase {

  let problem = "MaximumDepthOfBinaryTree_E104_Test"

  func test001() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(1), right: TreeNode(5)),
      right: TreeNode(3, left: TreeNode(4)))

    let expected: Int = 3

    let answer = MaximumDepthOfBinaryTree_E104().maxDepth(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
