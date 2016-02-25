//
//  ExcelSheetColumnNumber_E171_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ExcelSheetColumnNumber_E171_Test: XCTestCase {

  let problem = "ExcelSheetColumnNumber_E171"

  func test001() {
    let input: String = "C"
    let expected: Int = 3

    let answer = ExcelSheetColumnNumber_E171().titleToNumber(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input: String = "AB"
    let expected: Int = 28

    let answer = ExcelSheetColumnNumber_E171().titleToNumber(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input: String = "AZVS"
    let expected: Int = 35743

    let answer = ExcelSheetColumnNumber_E171().titleToNumber(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
