//
//  TreeNode.swift
//  LeetCode-Swift
//
//  Created by GUO Lin on 2/24/16.
//  Copyright © 2016 lincode. All rights reserved.
//

public class TreeNode {

  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?

  init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }

  convenience init(_ val: Int, left: TreeNode?) {
    self.init(val)
    self.left = left
  }

  convenience init(_ val: Int, right: TreeNode?) {
    self.init(val)
    self.right = right
  }

  convenience init(_ val: Int, left: TreeNode?, right: TreeNode?) {
    self.init(val)
    self.left = left
    self.right = right
  }

  var description: String {
    return "val:\(self.val), left:\(self.left), right:\(self.right)"
  }
}


// MARK: - Equatable

extension TreeNode: Equatable {

}

func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
  if let p = p, q = q {
    if p.val == q.val &&
      p.left == q.left &&
      p.right == q.right {
        return true
    }
    return false
  } else if p == nil && q == nil {
    return true
  }
  return false
}


public func ==(lhs: TreeNode, rhs: TreeNode) -> Bool {
  return isSameTree(lhs, rhs)
}

public func ==(lhs: [TreeNode?], rhs: [TreeNode?]) -> Bool {

  if lhs.count != rhs.count {
    return false
  }

  for var i = 0; i < lhs.count ; i++ {
    let lnode = lhs[i]
    let rnode = rhs[i]
    if lnode != rnode {
      return false
    }
  }
  return true
}



