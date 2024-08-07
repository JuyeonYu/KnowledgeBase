//
//  ValidBST.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/1/24.
//  https://leetcode.com/problems/validate-binary-search-tree/description/

import Foundation

/*
 bst를 중위순회하면 오름차순이 된다는 특징을 이용했다.
 분명히 좀 더 최적화 할 수 있을텐데...
 배열을 완성시키고 한꺼번에 비교하지말고 바로 전 값과 비교하기만 하면 될듯
 */

struct ValidBST {
  func solution(_ node: TreeNode?) -> Bool {
    func makeArray(_ node: TreeNode?) -> [Int] {
      guard let node else { return [] }
      return makeArray(node.left) + [node.val] + makeArray(node.right)
    }
    let arr = makeArray(node)
    
    for i in 0 ..< arr.count - 1 where arr[i] >= arr[i + 1] {
      return false
    }
    return true
  }
  func solution2(_ node: TreeNode?) -> Bool {
    func isValid(_ node: TreeNode?, low: Int, high: Int) -> Bool {
      guard let node else { return true }
      if node.val <= low || node.val >= high {
        return false
      }
      return isValid(node.left, low: low, high: node.val) && isValid(node.right, low: node.val, high: high)
    }
    return isValid(node, low: Int.min, high: Int.max)
  }
}
