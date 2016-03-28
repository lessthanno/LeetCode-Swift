//
//  Queue.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 3/27/16.
//  Copyright © 2016 lincode. All rights reserved.
//

public struct Queue<T> {
  
  private var items = [T]()

  public init(arrayLiteral elements: T...) {
    self.items = elements
  }

  mutating func push(item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeFirst()
  }

  mutating func removeAll() {
    return items.removeAll()
  }

  func empty() -> Bool {
    return items.count == 0
  }

  func count() -> Int {
    return items.count
  }

}

extension Queue: SequenceType {

  public func generate() -> AnyGenerator<T> {
    var index = 0
    return AnyGenerator {
      if index < self.items.count {
        let item = self.items[index]
        index += 1
        return item
      } else {
        return nil
      }
    }
  }

}