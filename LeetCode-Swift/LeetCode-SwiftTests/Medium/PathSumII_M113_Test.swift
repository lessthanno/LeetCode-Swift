//
//  PathSumII_M113_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/29/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class PathSumII_M113_Test: XCTestCase {

  let problem = "PathSumII_M113_Test"

  func test001() {
    let input1 = TreeNode(5,
                         left: TreeNode(4, left: TreeNode(8)),
                         right: TreeNode(8, left: TreeNode(13), right: TreeNode(4)))
    let input2 = 17
    let expected = [[5,4,8], [5,8,4]]

    let answer = PathSumII_M113().pathSum(input1, input2)

    LCSAssert(problem, input: "\(input1) + \(input2)", answer: answer, expected: expected, judge: { answer == expected })
  }

}
