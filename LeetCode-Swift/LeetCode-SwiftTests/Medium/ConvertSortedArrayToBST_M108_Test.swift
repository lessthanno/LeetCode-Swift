//
//  ConvertSortedArrayToBST_M108_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ConvertSortedArrayToBST_M108_Test: XCTestCase {

  let problem = "ConvertSortedArrayToBST_M108"
  func test001() {
    let input = [1, 2, 3, 4, 5, 6, 7]
    let expected = TreeNode(4,
      left: TreeNode(2, left:  TreeNode(1), right: TreeNode(3)),
      right: TreeNode(6, left: TreeNode(5), right: TreeNode(7)))

    let answer = ConvertSortedArrayToBST_M108().sortedArrayToBST(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer! == expected })
  }

}
