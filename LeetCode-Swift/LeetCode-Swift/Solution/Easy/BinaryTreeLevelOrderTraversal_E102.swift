/*

102. Binary Tree Level Order Traversal My Submissions Question

https://leetcode.com/problems/binary-tree-level-order-traversal/

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree {3,9,20,#,#,15,7},
  3
 / \
 9  20
   /  \
  15   7

return its level order traversal as:

[
[3],
[9,20],
[15,7]
]

*/

public class BinaryTreeLevelOrderGenerator: GeneratorType {

  typealias QueueType = Queue<TreeNode>
  private var queue: QueueType

  public typealias Element = [Int]

  init(root: TreeNode) {
    queue = QueueType()
    queue.push(root)
  }

  private func hasNext() -> Bool {
    return !self.queue.empty()
  }

  public func next() -> Element? {
    var result: Element = []
    var queueNext = QueueType()

    if !hasNext() {
      return nil
    }

    for node in queue {

      if let right = node.right {
        queueNext.push(right)
      }

      if let left = node.left {
        queueNext.push(left)
      }

      result.insert(node.val, atIndex: 0)
    }
    queue = queueNext
    return result
  }

}

class BinaryTreeLevelOrderTraversal_E102 {


// MARK: - iterative by GeneratorType

  func levelOrder(root: TreeNode?) -> [[Int]] {

    guard let root = root else {
      return []
    }

    let generator = BinaryTreeLevelOrderGenerator(root: root)
    var result: [[Int]] = []

    var nodes = generator.next()
    while nodes != nil {
      result.append(nodes!)
      nodes = generator.next()
    }

    return result
  }

// MARK:- recursive

  func levelOrderRecursive(root: TreeNode?) -> [[Int]] {
    guard let root = root else {
      return []
    }

    var queue = Queue<TreeNode>()
    queue.push(root)
    return levelOrderTraversal(queue, result: [])
  }

  func levelOrderTraversal(queue: Queue<TreeNode>, result:[[Int]]) -> [[Int]] {

    var resultLevel:[Int] = []
    var queueNext = Queue<TreeNode>()

    for node in queue {
      resultLevel.append(node.val)

      if let left = node.left {
        queueNext.push(left)
      }

      if let right = node.right {
        queueNext.push(right)
      }
    }

    var output = result
    output.append(resultLevel)

    if queueNext.empty() {
      return output
    } else {
      return levelOrderTraversal(queueNext, result: output)
    }

  }
}