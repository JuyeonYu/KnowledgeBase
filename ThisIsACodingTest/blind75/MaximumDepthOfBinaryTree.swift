//
//  MaximumDepthOfBinaryTree.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/3/25.
//

import Foundation

class MaximumDepthOfBinaryTree {
  func solution(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    return 1 + max(solution(root.left), solution(root.right))
  }
}
