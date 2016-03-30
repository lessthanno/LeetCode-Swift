//
//  FlattenBinaryTreeToLinkedList_M114_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/30/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class FlattenBinaryTreeToLinkedList_M114_Test: XCTestCase {

  let problem = "FlattenBinaryTreeToLinkedList_M114_Test"

  func test001() {
    let input = TreeNode(5,
                        left: TreeNode(4),
                        right: TreeNode(8, left: TreeNode(13)))
    let expected = TreeNode(5, right: TreeNode(4, right: TreeNode(8, right: TreeNode(13))))

    let answer = expected

    FlattenBinaryTreeToLinkedList_M114().flatten(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { input == expected })
  }

}
