//
//  NimGame_E292_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/22/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class NimGame_E292_Test: XCTestCase {

  let problem = "NimGame_E292"

  func test_001() {
    let input: Int = 1
    let expected: Bool = true

    let answer = NimGame_E292().canWinNim(input)

    assert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }

  func test_002() {
    let input: Int = 104
    let expected: Bool = false

    let answer = NimGame_E292().canWinNim(input)

    assert(problem, input: input, answer: answer, expected: expected, judge: { answer == expected })
  }


}
