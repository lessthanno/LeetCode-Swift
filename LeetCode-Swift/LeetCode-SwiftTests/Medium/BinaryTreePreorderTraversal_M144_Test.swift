//
//  BinaryTreePreorderTraversal_E144_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift


class BinaryTreePreorderTraversal_M144_Test: XCTestCase {

  let problem = "BinaryTreePreorderTraversal_M144"
  
  func test001() {

    let input = TreeNode(val: 1,
      left: TreeNode(val: 3, left:  TreeNode(val: 2), right: TreeNode(val: 3)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))
    let expected = [1, 3, 2, 3, 4, 6, 7]

    let answer = BinaryTreePreorderTraversal_M144().preorderTraversal(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {

    let input = TreeNode(val: 1,
      left: TreeNode(val: 3, left:  TreeNode(val: 2), right: TreeNode(val: 3)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))
    let expected = [1, 3, 2, 3, 4, 6, 7]

    let answer = BinaryTreePreorderTraversal_M144().preorderTraversalRecursive(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
