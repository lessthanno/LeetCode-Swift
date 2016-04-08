//
//  ValidParentheses_E20_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/8/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ValidParentheses_E20_Test: XCTestCase {

  let problem = "ValidParentheses_E20_Test"
  func test001() {
    let input = "{{}}[][()]"
    let expected = true

    let answer = ValidParentheses_E20().isValid(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input = "{{}][()]"
    let expected = false

    let answer = ValidParentheses_E20().isValid(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input = "{"
    let expected = false

    let answer = ValidParentheses_E20().isValid(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test004() {
    let input = "{("
    let expected = false

    let answer = ValidParentheses_E20().isValid(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
