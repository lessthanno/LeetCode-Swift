//
//  AddDigits_E258_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class AddDigits_E258_Test: XCTestCase {

  let problem = "AddDigits_E258"

  func test001() {
    let input: Int = 271
    let expected: Int = 1

    let answer = AddDigits_E258().addDigits(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
