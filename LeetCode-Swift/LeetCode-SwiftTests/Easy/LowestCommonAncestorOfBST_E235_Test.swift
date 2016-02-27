//
//  LowestCommonAncestorOfBST_E235_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class LowestCommonAncestorOfBST_E235_Test: XCTestCase {

  let problem = "LowestCommonAncestorOfBST_E235"

  func test001() {
    let root = TreeNode(val: 7,
      left: TreeNode(val: 2, left:  TreeNode(val: 0), right: TreeNode(val: 4)),
      right: TreeNode(val: 8, left: TreeNode(val: 7), right: TreeNode(val: 9)))

    let p = TreeNode(val: 0)
    let q = TreeNode(val: 8, left: TreeNode(val: 7), right: TreeNode(val: 9))

    let answer = LowestCommonAncestorOfBST_E235().lowestCommonAncestor(root, p: p, q: q)

    let expected = root

    LCSAssert(problem, input: "\(root)  \(q) \(p)", answer: answer, expected: expected, judge: { answer!.val  == expected.val })
  }

  func test002() {
    let root = TreeNode(val: 7,
      left: TreeNode(val: 2, left:  TreeNode(val: 0), right: TreeNode(val: 4)),
      right: TreeNode(val: 8, left: TreeNode(val: 7), right: TreeNode(val: 9)))

    let p = TreeNode(val: 0)
    let q = TreeNode(val: 4)

    let answer = LowestCommonAncestorOfBST_E235().lowestCommonAncestor(root, p: p, q: q)

    let expected = TreeNode(val: 2, left:  TreeNode(val: 0), right: TreeNode(val: 4))

    LCSAssert(problem, input: "\(root)  \(q) \(p)", answer: answer, expected: expected, judge: { answer!.val  == expected.val })
  }

}
