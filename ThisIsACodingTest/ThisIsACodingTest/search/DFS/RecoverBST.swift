//
//  RecoverBST.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/2/24.
//  https://leetcode.com/problems/recover-binary-search-tree/

import Foundation

struct RecoverBST {
    func solution(_ root: TreeNode?) {
        func recover(_ root: TreeNode?, lowNode: TreeNode?, highNode: TreeNode?) {
            guard let node = root else { return }
            let temp = node.val
            let low = lowNode?.val ?? Int.min
            let high = highNode?.val ?? Int.max
            if low > high {
                lowNode?.val = high
                highNode?.val = low
            }
            if node.val < lowNode?.val ?? Int.min {
                node.val = lowNode?.val ?? Int.min
                lowNode?.val = temp
            } else if node.val > highNode?.val ?? Int.max {
                node.val = highNode?.val ?? Int.max
                highNode?.val = temp
            }
            recover(node.left, lowNode: lowNode, highNode: node)
            recover(node.right, lowNode: node, highNode: highNode)
        }
        recover(root, lowNode: root?.left, highNode: root?.right)
    }
}
