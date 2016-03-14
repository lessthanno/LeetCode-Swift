//
//  UniqueBinarySearchTreesII_M95_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/14/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift


class UniqueBinarySearchTreesII_M95_Test: XCTestCase {

  let problem = "UniqueBinarySearchTreesII_M95"

  func test001() {
    let input = 2
    let expected: [TreeNode?] = [TreeNode(1, right: TreeNode(2)),
                                 TreeNode(2, left: TreeNode(1))]

    let answer = UniqueBinarySearchTreesII_E95().generateTrees(input)
    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
    
  }

  func test002() {
    let input = 3
    let expected: [TreeNode?] = [TreeNode(1, right: TreeNode(2, right: TreeNode(3))),
                                 TreeNode(1, right: TreeNode(3, left: TreeNode(2))),
                                 TreeNode(2, left: TreeNode(1), right: TreeNode(3)),
                                  TreeNode(3, left: TreeNode(1, right: TreeNode(2))),
                                 TreeNode(3, left: TreeNode(2, left: TreeNode(1)))]

    let answer = UniqueBinarySearchTreesII_E95().generateTrees(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
