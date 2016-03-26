//
//  Queue.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

struct Queue<T> {
  var items = [T]()

  mutating func add(item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeFirst()
  }

  func empty() -> Bool {
    return items.count == 0
  }

}