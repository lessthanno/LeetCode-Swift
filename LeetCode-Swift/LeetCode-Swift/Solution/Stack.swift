//
//  Stack.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//


public struct Stack<T> {

  private var items = [T]()

  mutating func push(item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeLast()
  }

  func top() -> T? {
    return items.last
  }

  func empty() -> Bool {
    return items.count == 0
  }

  func count() -> Int {
    return items.count
  }
}
