//
//  BinaryTreeZigzagLevelOrderTraversal_M103_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/5/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreeZigzagLevelOrderTraversal_M103_Test: XCTestCase {

  let problem = "BinaryTreeZigzagLevelOrderTraversal_M103_Test"

  func test001() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))

    let expected:[[Int]] = [ [5],
                             [8, 4],
                             [13]]

    let answer = BinaryTreeZigzagLevelOrderTraversal_M103().zigzagLevelOrder(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test002() {
    let input = TreeNode(3,
                         left: TreeNode(9),
                         right: TreeNode(20, left: TreeNode(15), right: TreeNode(7)))

    let expected:[[Int]] = [ [3],
                             [20, 9],
                             [15, 7]]

    let answer = BinaryTreeZigzagLevelOrderTraversal_M103().zigzagLevelOrder(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }
}
