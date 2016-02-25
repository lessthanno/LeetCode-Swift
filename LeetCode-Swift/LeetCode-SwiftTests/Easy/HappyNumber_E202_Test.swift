//
//  HappyNumber_E202_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class HappyNumber_E202_Test: XCTestCase {

  let problem = "HappyNumber_E202"

  func test001() {
    let input: Int = 19
    let expected: Bool = true

    let answer = HappyNumber_E202().isHappy(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
