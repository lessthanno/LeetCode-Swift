//
//  RecoverBinarySearchTree_H99_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/1/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class RecoverBinarySearchTree_H99_Test: XCTestCase {

  let problem = "RecoverBinarySearchTree_H99_Test"

  func test001() {
    let input = TreeNode(5,
                         left: TreeNode(8),
                         right: TreeNode(4, right: TreeNode(13)))
    let expected = TreeNode(5,
                            left: TreeNode(4),
                            right: TreeNode(8, right: TreeNode(13)))

    RecoverBinarySearchTree_H99().recoverTree(input)

    LCSAssert(problem, input: input, answer: "answer", expected: expected, judge: { input == expected })
  }

  func test002() {
    let input = TreeNode(0, left: TreeNode(1))
    let expected = TreeNode(1, left: TreeNode(0))

    RecoverBinarySearchTree_H99().recoverTree(input)

    LCSAssert(problem, input: input, answer: "answer", expected: expected, judge: { input == expected })
  }


}
