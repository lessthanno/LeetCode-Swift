//
//  SingleNumber_M136_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 4/11/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class SingleNumber_M136_Test: XCTestCase {

  let problem = "SingleNumber_M136_Test"

  func test001() {
    let input = [1,2,3,2,3,1,2]
    let expected: Int = 2

    let answer = SingleNumber_M136().singleNumber(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


  func test002() {
    let input = [1,2,3,2,3,1,10]
    let expected: Int = 10

    let answer = SingleNumber_M136().singleNumber(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
