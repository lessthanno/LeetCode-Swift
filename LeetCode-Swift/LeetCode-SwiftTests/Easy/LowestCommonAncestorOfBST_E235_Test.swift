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
    let root = TreeNode(7,
      left: TreeNode(2, left:  TreeNode(0), right: TreeNode(4)),
      right: TreeNode(8, left: TreeNode(7), right: TreeNode(9)))

    let p = TreeNode(0)
    let q = TreeNode(8, left: TreeNode(7), right: TreeNode(9))

    let answer = LowestCommonAncestorOfBST_E235().lowestCommonAncestor(root, p: p, q: q)

    let expected = root

    LCSAssert(problem, input: "\(root)  \(q) \(p)", answer: answer, expected: expected, judge: { answer!.val  == expected.val })
  }

  func test002() {
    let root = TreeNode(7,
      left: TreeNode(2, left:  TreeNode(0), right: TreeNode(4)),
      right: TreeNode(8, left: TreeNode(7), right: TreeNode(9)))

    let p = TreeNode(0)
    let q = TreeNode(4)

    let answer = LowestCommonAncestorOfBST_E235().lowestCommonAncestor(root, p: p, q: q)

    let expected = TreeNode(2, left:  TreeNode(0), right: TreeNode(4))

    LCSAssert(problem, input: "\(root)  \(q) \(p)", answer: answer, expected: expected, judge: { answer!.val  == expected.val })
  }

}
