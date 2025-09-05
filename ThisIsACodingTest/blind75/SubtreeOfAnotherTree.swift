//
//  SubtreeOfAnotherTree.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class SubtreeOfAnotherTree {
    func solution(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard subRoot != nil else { return false }
        guard let root else { return false }
        if isSame(root.left, root.right) { return true }
        return solution(root.left, subRoot) || solution(root.right, subRoot)
    }
    
    func isSame(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        if a == nil && b == nil { return true }
        guard let a, let b else { return false }
        if a.val != b.val { return false }
        return isSame(a.left, b.left) && isSame(a.right, b.right)
    }
}
