//
//  MajorityElement_E169_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class MajorityElement_E169_Test: XCTestCase {

  let problem = "MajorityElement_E169_Test"

  func test001() {
    let input: [Int] = [1,2,1,4,1,5,1,1,1,7,8]
    let expected: Int = 1

    let answer = MajorityElement_E169().majorityElement(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
