//
//  BinaryTreePaths_E257_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/29/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreePaths_E257_Test: XCTestCase {

  let problem = "BinaryTreePaths_E257_Test"
  func test001() {
    let input = TreeNode(1,
                         left: TreeNode(2, right: TreeNode(3)),
                         right: TreeNode(3, right: TreeNode(4)))

    let expected = ["1->3->4", "1->2->3"]

    let answer = BinaryTreePaths_E257().binaryTreePaths(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })

  }

}
