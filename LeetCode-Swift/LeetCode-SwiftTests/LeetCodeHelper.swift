//
//  LeetCode_SwiftTests.swift
//  LeetCode-SwiftTests
//
//  Created by GUO Lin on 2/22/16.
//  Copyright © 2016 lincode. All rights reserved.
//

import XCTest

func assert(problem: String, input: Any, answer: Any, expected: Any, judge: () -> Bool) {
  XCTAssert(judge(), "\nProblem: \(problem)\nInput \(input)\nanswer: \(answer)\n expected: \(expected)")
}
