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

  init(val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }

  convenience init(val: Int, left: TreeNode?, right: TreeNode?) {
    self.init(val: val)
    self.left = left
    self.right = right
  }
}


