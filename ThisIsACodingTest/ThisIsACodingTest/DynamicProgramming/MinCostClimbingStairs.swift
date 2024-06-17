//
//  MinCostClimbingStairs.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/17/24.
//

// https://leetcode.com/problems/min-cost-climbing-stairs/
// 계단은 한번에 한 칸 혹은 두 칸씩 올라갈 수 있음
// dp에 해당 index의 최소 비용을 메모해 둠
import Foundation

struct MinCostClimbingStairs {
    func solution(_ cost: [Int]) -> Int {
        var dp: [Int] = .init(repeating: 0, count: cost.count)
        dp[0] = cost[0]
        dp[1] = cost[1]
        
        for i in 2 ..< cost.count {
            dp[i] = min(dp[i - 2], dp[i - 1]) + cost[i]
        }
        
        return min(dp[dp.count - 2], dp[dp.count - 1])
    }
}
