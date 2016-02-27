//
//  ContainsDuplicate_E217_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class ContainsDuplicate_E217_Test: XCTestCase {

  let problem = "ContainsDuplicate_E217"

  func test001() {
    let input: [Int] = []
    let expected: Bool = false

    let answer = ContainsDuplicate_E217().containsDuplicate(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test002() {
    let input: [Int] = [1,2,3,3]
    let expected: Bool = true

    let answer = ContainsDuplicate_E217().containsDuplicate(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test003() {
    let input: [Int] = [1,2,3]
    let expected: Bool = false

    let answer = ContainsDuplicate_E217().containsDuplicate(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
