//
//  ExcelSheetColumnTitle_E168_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/23/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ExcelSheetColumnTitle_E168_Test: XCTestCase {

  let problem = "ExcelSheetColumnTitle_E168"

  func test001() {
    let input = 26
    let expected = "Z"

    let answer = ExcelSheetColumnTitle_E168().convertToTitle(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test002() {
    let input = 27
    let expected = "AA"

    let answer = ExcelSheetColumnTitle_E168().convertToTitle(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input = 28
    let expected = "AB"

    let answer = ExcelSheetColumnTitle_E168().convertToTitle(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test004() {
    let input = 11202
    let expected = "PNV"

    let answer = ExcelSheetColumnTitle_E168().convertToTitle(input)
    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
