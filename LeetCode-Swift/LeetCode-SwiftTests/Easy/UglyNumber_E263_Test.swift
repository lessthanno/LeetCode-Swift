//
//  UglyNumber_E263_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/22/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class UglyNumber_E263_Test: XCTestCase {

  let problem = "UglyNumber_E263"

  func test001() {
    let input: Int = 8
    let expected: Bool = true

    let answer = UglyNumber_E263().isUgly(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input: Int = 7
    let expected: Bool = false

    let answer = UglyNumber_E263().isUgly(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test003() {
    let input: Int = 14
    let expected: Bool = false

    let answer = UglyNumber_E263().isUgly(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test004() {
    let input: Int = 21474836
    let expected: Bool = false

    let answer = UglyNumber_E263().isUgly(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
