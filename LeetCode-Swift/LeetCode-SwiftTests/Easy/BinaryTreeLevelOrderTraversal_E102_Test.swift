//
//  BinaryTreeLevelOrderTravel_E102.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreeLevelOrderTraversal_E102_Test: XCTestCase {

  let problem = "BinaryTreeLevelOrderTravel_E102_Test"

  func test001() {
    let input = TreeNode(1,
      left: TreeNode(2, left: TreeNode(1), right: TreeNode(5)),
      right: TreeNode(3, left: TreeNode(4)))

    let expected: [[Int]] = [[1], [2,3], [1,5,4]]

    let answer = BinaryTreeLevelOrderTraversal_E102().levelOrder(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
