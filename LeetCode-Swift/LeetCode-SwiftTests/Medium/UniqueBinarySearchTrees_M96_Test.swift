//
//  UniqueBinarySearchTrees_M96_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class UniqueBinarySearchTrees_M96_Test: XCTestCase {

  let problem = "UniqueBinarySearchTrees_M96"

  func test001() {
    let input = 5
    let expected = 42

    let answer = UniqueBinarySearchTrees_E96().numTrees(input)
    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })

  }

}
