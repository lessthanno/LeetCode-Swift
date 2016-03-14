//
//  BinaryTreeInorderTraversal_E94_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreeInorderTraversal_M94_Test: XCTestCase {

  let problem = "BinaryTreeInorderTraversal_E94"

  func test001() {
    let input = TreeNode(1,
        left: TreeNode(2, left:  TreeNode(3), right: TreeNode(5)),
        right: TreeNode(4, left: TreeNode(6), right: TreeNode(7)))
    let expected = [3,2,5,1,6,4,7]

    let answer = BinaryTreeInorderTraversal_M94().inorderTraversal(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = TreeNode(1,
      left: TreeNode(2, left:  TreeNode(3), right: TreeNode(5)),
      right: TreeNode(4, left: TreeNode(6), right: TreeNode(7)))
    let expected = [3,2,5,1,6,4,7]

    let answer = BinaryTreeInorderTraversal_M94().inorderTraversalRecursive(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
