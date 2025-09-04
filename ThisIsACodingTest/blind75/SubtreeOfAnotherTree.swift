//
//  SubtreeOfAnotherTree.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class SubtreeOfAnotherTree {
    func solution(_ root: TreeNode?, _ sub: TreeNode?) -> Bool {
        guard sub != nil else { return false }
        guard let root else { return false }
        if isSame(root.left, root.right) { return true }
        return solution(root.left, sub) || solution(root.right, sub)
    }
    
    func isSame(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        if a == nil && b == nil { return true }
        guard let a, let b else { return false }
        if a.val != b.val { return false }
        return isSame(a.left, b.left) && isSame(a.right, b.right)
    }
}
