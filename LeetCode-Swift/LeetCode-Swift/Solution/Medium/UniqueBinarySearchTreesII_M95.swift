/*

95. (M) Unique Binary Search Trees II

https://leetcode.com/problems/unique-binary-search-trees-ii/

Given n, generate all structurally unique BST's (binary search trees) that store values 1...n.

For example,
Given n = 3, your program should return all 5 unique BST's shown below.


 1         3     3      2      1
  \       /     /      / \      \
   3     2     1      1   3      2
  /     /       \                 \
 2     1         2                 3

*/

class UniqueBinarySearchTreesII_E95 {


  func generateTrees(start: Int, len: Int) -> [TreeNode?] {

    if len == 0 {
      return []
    } else if len == 1 {
      return [TreeNode(start)]
    }

    var trees : [TreeNode?] = []


    let end = start + len  - 1

    for i in start...end {


      if i == start {

        let rights = generateTrees(i + 1, len: end - i)

        for right in rights {
          let node = TreeNode(i)
          node.right = right
          trees.append(node)
        }

      } else if i > start && i < end {

        let lefts = generateTrees(start, len: i - start)

        let rights = generateTrees(i + 1, len: end - i )

        for left in lefts {
          for right in rights {
            let node = TreeNode(i)
            node.left = left
            node.right = right
            trees.append(node)

          }
        }

      } else if i == end {

        let lefts = generateTrees(start, len: i - start)

        for left in lefts {
          let node = TreeNode(i)
          node.left = left
          trees.append(node)

        }

      }
      
    }
    
    return trees

  }

  func generateTrees(n: Int) -> [TreeNode?] {
    let trees = generateTrees(1, len: n)
    return trees
  }

}