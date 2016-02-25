//
//  PowerOfTwo_E231.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class PowerOfTwo_E231_Test: XCTestCase {

  let problem = "PowerOfTwo_E231"

  func test001() {
    let input: Int = 7
    let expected: Bool = false

    let answer = PowerOfTwo_E231().isPowerOfTwo(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input: Int = 8
    let expected: Bool = true

    let answer = PowerOfTwo_E231().isPowerOfTwo(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input: Int = -8
    let expected: Bool = false

    let answer = PowerOfTwo_E231().isPowerOfTwo(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test004() {
    let input: Int = 7
    let expected: Bool = false

    let answer = PowerOfTwo_E231().isPowerOfTwoIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test005() {
    let input: Int = 8
    let expected: Bool = true

    let answer = PowerOfTwo_E231().isPowerOfTwoIterative(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
