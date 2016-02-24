//
//  BinaryTreeInorderTraversal_E145_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class BinaryTreePostorderTraversal_H145_Test: XCTestCase {

  let problem = "BinaryTreePostorderTraversal_M145"

  func test001() {
    let input = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))
    let expected = [3,5,2,6,7,4,1]

    let answer = BinaryTreePostorderTraversal_H145().postorderTraversal(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = TreeNode(val: 1,
      left: TreeNode(val: 2, left:  TreeNode(val: 3), right: TreeNode(val: 5)),
      right: TreeNode(val: 4, left: TreeNode(val: 6), right: TreeNode(val: 7)))
    let expected = [3,5,2,6,7,4,1]

    let answer = BinaryTreePostorderTraversal_H145().postorderTraversalRecursive(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
