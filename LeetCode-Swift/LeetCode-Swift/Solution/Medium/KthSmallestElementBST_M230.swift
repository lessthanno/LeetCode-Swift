/*

230. (M) Kth Smallest Element in a BST My Submissions Question

https://leetcode.com/problems/kth-smallest-element-in-a-bst/

Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.

Note:
You may assume k is always valid, 1 ≤ k ≤ BST's total elements.

Follow up:
What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? 
How would you optimize the kthSmallest routine?

Hint:

Try to utilize the property of a BST.
What if you could modify the BST node's structure?
The optimal runtime complexity is O(height of BST).

*/


class KthSmallestElementBST_M230 {

// MARK: - Iterative by GeneratorType

  func kthSmallest(root: TreeNode?, _ k: Int) -> Int {

    let generator = BinaryTreeInorderTraversalGenerator(root: root)

    for _ in 1 ..< k {
      generator.next()
    }

    return generator.next()!
  }

}