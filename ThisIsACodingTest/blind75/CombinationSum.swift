//
//  CombinationSum.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/5/25.
//

import Foundation

class CombinationSum {
    func solution(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        var path: [Int] = []
        
        func dfs(_ start: Int, _ remain: Int) {
            if remain == 0 {
                result.append(path)
                return
            }
            
            if remain < 0 {
                return
            }
            
            for i in start ..< candidates.count {
                let val = candidates[i]
                if val > remain {
                    break
                }
                path.append(val)
                dfs(i, remain - val)
                path.removeLast()
            }
        }
        
        dfs(0, target)
        return result
    }
}
