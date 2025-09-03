//
//  InvertBinaryTree.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class InvertBinaryTree {
  func solution(_ root: TreeNode?) -> TreeNode? {
    guard let node = root else { return nil }

    let left = solution(node.left)
    let right = solution(node.right)
    node.left = right
    node.right = left

    return node

  }
}
