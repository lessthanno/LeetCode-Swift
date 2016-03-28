//
//  PowerOfThree_E326_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class PowerOfThree_E326_Test: XCTestCase {

  let problem = "PowerOfThree_E326"

  func test001() {
    let input: Int64 = 27
    let expected: Bool = true

    let answer = PowerOfThree_E326().isPowerOfThree(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input: Int64 = 1162261467
    let expected: Bool = true

    let answer = PowerOfThree_E326().isPowerOfThree(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input: Int = 1162261467
    let expected: Bool = true

    let answer = PowerOfThree_E326().isPowerOfThreeRecursive(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
