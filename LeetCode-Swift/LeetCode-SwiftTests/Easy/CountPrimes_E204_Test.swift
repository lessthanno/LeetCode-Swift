//
//  CountPrimes_E204.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class CountPrimes_E204_Test: XCTestCase {

  let problem = "CountPrimes_E204"

  func test001() {
    let input: Int = 7
    let expected: Int = 3

    let answer = CountPrimes_E204().countPrimes(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })

  }

  func test002() {
    let input: Int = 9
    let expected: Int = 4

    let answer = CountPrimes_E204().countPrimes(input)

    LCSAssert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
    
  }

}
