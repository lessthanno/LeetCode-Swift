//
//  MoveZeroes_E283_Test.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/22/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest

@testable import LeetCode_Swift


class MoveZeroes_E283_Test: XCTestCase {

  let problem = "MoveZeroes_E283"

  func test001() {
    let original = [0, 1, 0, 3, 12]
    var input = original
    let expected = [1, 3, 12, 0, 0]

    MoveZeroes_E283().moveZeroes(&input)

    assert(problem, input: original, answer: input, expected: expected) { input == expected }
  }

  func test002() {
    let original = [0, 0, 1, 0, 0, 3, 0, 12]
    var input = original
    let expected = [1, 3, 12, 0, 0, 0, 0, 0]

    MoveZeroes_E283().moveZeroes(&input)

    assert(problem, input: original, answer: input, expected: expected) { input == expected }
  }


}
