//
//  HouseRobberII_M213_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/26/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class HouseRobberII_M213_Test: XCTestCase {

  let problem = "HouseRobber_E198_Test"
  func test001() {
    let input: [Int] = [1,12,34,55,99,23,90]
    let expected: Int = 223

    let answer = HouseRobberII_M213().rob(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

}
