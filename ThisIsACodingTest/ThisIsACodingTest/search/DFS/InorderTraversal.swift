//
//  InorderTraversal.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/1/24.
//  https://leetcode.com/problems/binary-tree-inorder-traversal/

import Foundation

struct InorderTraversal {
  func solution(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }
    return solution(root.left) + [root.val] + solution(root.right)

  }
}
