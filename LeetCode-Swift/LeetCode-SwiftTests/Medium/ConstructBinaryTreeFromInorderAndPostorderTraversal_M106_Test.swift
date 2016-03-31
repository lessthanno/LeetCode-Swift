//
//  ConstructBinaryTreeFromInorderAndPostorderTraversal_M106_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/31/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ConstructBinaryTreeFromInorderAndPostorderTraversal_M106_Test: XCTestCase {

  let problem = "ConstructBinaryTreeFromInorderAndPostorderTraversal_M106_Test"

  func test001() {
    let input1 = [4,2,5,1,6,3,7]
    let input2 = [4,5,2,6,7,3,1]

    let expected = TreeNode(1,
                            left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
                            right: TreeNode(3, left: TreeNode(6), right: TreeNode(7)))

    let answer = ConstructBinaryTreeFromInorderAndPostorderTraversal_M106().buildTreeRecursive(input1, input2)


    LCSAssert(problem, input: input1, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input1 = [4,2,5,1,6,3,7]
    let input2 = [4,5,2,6,7,3,1]

    let expected = TreeNode(1,
                            left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
                            right: TreeNode(3, left: TreeNode(6), right: TreeNode(7)))

    let answer = ConstructBinaryTreeFromInorderAndPostorderTraversal_M106().buildTree(input1, input2)


    LCSAssert(problem, input: input1, answer: answer, expected: expected, judge: { answer == expected })
  }


}
