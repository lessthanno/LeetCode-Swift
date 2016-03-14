//
//  KthSmallestElementBST.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class KthSmallestElementBST_M230_Test: XCTestCase {

  let problem = "KthSmallestElementBST_M230"
  func test001() {
    let input = TreeNode(6,
      left: TreeNode(2, left:  TreeNode(0), right: TreeNode(4)),
      right: TreeNode(8, left: TreeNode(7), right: TreeNode(9)))
    let k = 3
    let expected = 4

    let answer = KthSmallestElementBST_M230().kthSmallest(input, k)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test002() {
    let input = TreeNode(6,
      left: TreeNode(2, left:  TreeNode(0), right: TreeNode(4)),
      right: TreeNode(8, left: TreeNode(7), right: TreeNode(9)))
    let k = 6
    let expected = 8

    let answer = KthSmallestElementBST_M230().kthSmallest(input, k)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
