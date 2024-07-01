//
//  RangeSumOfBST.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/1/24.
//  https://leetcode.com/problems/range-sum-of-bst/description/

import Foundation

struct RangeSumOfBST {
  func solution(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    guard let root else { return 0 }
    if root.val >= low && root.val <= high {
      return root.val + solution(root.left, low, high) + solution(root.right, low, high)
    } else if root.val < low {
      return solution(root.right, low, high)
    } else if root.val > high {
      return solution(root.left, low, high)
    } else {
      return 0
    }
  }
}
