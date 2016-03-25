//
//  HouseRobber_E198_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/25/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class HouseRobber_E198_Test: XCTestCase {

  let problem = "HouseRobber_E198_Test"
  func test002() {
    let input: [Int] = [1,10,4,79,99,12,100,128,99,1]
    let expected: Int = 308

    let answer = HouseRobber_E198().rob(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
