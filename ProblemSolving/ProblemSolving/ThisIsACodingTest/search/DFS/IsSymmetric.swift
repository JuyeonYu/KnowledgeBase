//
//  IsSymmetric.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/10/24.
//

/*
 https://leetcode.com/problems/symmetric-tree/
 
 SameTree에서 코드 살짝 바꾸면 풀림
 같은 트리가 아니라 대칭인지 검사하기 위해
 p.left와 q.right를 비교해야함
 */

import Foundation
struct IsSymmetric {
    func solution(_ root: TreeNode?) -> Bool {
        func isSymmetric(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            guard p != nil || q != nil else { return true }
            guard let p, let q else { return false }
            guard p.val == q.val else { return false }
            return isSymmetric(p.left, q.right) && isSymmetric(p.right, q.left)
        }

        return isSymmetric(root?.left, root?.right)
    }
}

