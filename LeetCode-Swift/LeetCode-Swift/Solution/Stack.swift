//
//  Stack.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//


struct Stack<T> {

  var items = [T]()

  mutating func push(item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeLast()
  }

  func empty() -> Bool {
    return items.count == 0
  }
}
