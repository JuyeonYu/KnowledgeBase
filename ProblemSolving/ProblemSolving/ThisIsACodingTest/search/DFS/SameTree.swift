//
//  SameTree.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/10/24.
//

import Foundation

/*
 https://leetcode.com/problems/same-tree/description/
 두번째 풀이는 솔루션을 보고 더 깔끔한 코드를 참조함
 guard나 if문에서 , 는 and임
 */


struct SameTree {
    func solution(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var leftValues: [Int?] = []
        var rightValues: [Int?] = []
        
        dfs(node: p) {
            leftValues.append($0)
        }
        dfs(node: q) {
            rightValues.append($0)
        }
        
        func dfs(node: TreeNode?, completion: @escaping ((Int?) -> Void)) {
            guard let node else {
                completion(nil)
                return
            }
            completion(node.val)
            dfs(node: node.left, completion: completion)
            dfs(node: node.right, completion: completion)
        }
        return leftValues == rightValues
    }
    
    func solution2(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p != nil || q != nil else { return true } // 둘 다 nil이면 같음
        guard let p, let q else { return false } // 둘 중 하나가 nil이면 다름
        guard p.val == q.val else { return false }
        return solution2(p.left, q.left) && solution2(p.right, q.right)
    }
}
