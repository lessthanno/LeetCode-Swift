//
//  LowestCommonAncestorOfBinaryTree_M236.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/5/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class LowestCommonAncestorOfBinaryTree_M236_Test: XCTestCase {

  let problem = "LowestCommonAncestorOfBinaryTree_M236"

  func test001() {
    let left = TreeNode(4)
    let right = TreeNode(8, right: TreeNode(13))
    let input = TreeNode(5,
                         left: left,
                         right: right)
    let expected = input

    let answer = LowestCommonAncestorOfBinaryTree_M236().lowestCommonAncestor(input, p: left, q: right)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == input })
  }


  func test002() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))
    let expected = TreeNode(8, right: TreeNode(13))

    let answer = LowestCommonAncestorOfBinaryTree_M236().lowestCommonAncestor(input, p: TreeNode(8), q:  TreeNode(13))

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == input })
  }

  func test003() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))
    let expected = input

    let answer = LowestCommonAncestorOfBinaryTree_M236().lowestCommonAncestor(input, p: TreeNode(4), q:  TreeNode(13))

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == input })
  }

  func test011() {
    let left = TreeNode(4)
    let right = TreeNode(8, right: TreeNode(13))
    let input = TreeNode(5,
                         left: left,
                         right: right)
    let expected = input

    let answer = LowestCommonAncestorOfBinaryTree_M236().lowestCommonAncestorRecursive(input, p: left, q: right)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == input })
  }


  func test012() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))
    let expected = TreeNode(8, right: TreeNode(13))

    let answer = LowestCommonAncestorOfBinaryTree_M236().lowestCommonAncestorRecursive(input, p: TreeNode(8), q:  TreeNode(13))

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == input })
  }

  func test013() {
    let input = TreeNode(5,
                         left: TreeNode(4),
                         right: TreeNode(8, right: TreeNode(13)))
    let expected = input

    let answer = LowestCommonAncestorOfBinaryTree_M236().lowestCommonAncestorRecursive(input, p: TreeNode(4), q:  TreeNode(13))

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == input })
  }

}
