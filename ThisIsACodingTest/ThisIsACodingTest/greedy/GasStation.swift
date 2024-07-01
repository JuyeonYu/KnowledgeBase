//
//  GasStation.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/28/24.
//  https://leetcode.com/problems/gas-station/

import Foundation

// Output: 3
//[5,8,2,8], [6,5,6,6] = 3

/*
 Input: gas = [1,2,3,4,5], cost = [3,4,5,1,2]
 Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
 Travel to station 4. Your tank = 4 - 1 + 5 = 8
 Travel to station 0. Your tank = 8 - 2 + 1 = 7
 Travel to station 1. Your tank = 7 - 3 + 2 = 6
 Travel to station 2. Your tank = 6 - 4 + 3 = 5
 Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
 Therefore, return 3 as the starting index.
 */
struct GasStation {
    func solution(_ gas: [Int], _ cost: [Int]) -> Int {
        guard gas.reduce(0, +) >= cost.reduce(0, +) else { return -1 }
        
        var tank: Int = 0
        var index: Int = 0
        
        for i in 0 ..< gas.count {
            tank += gas[i] - cost[i]
            
            if tank < 0 {
                tank = 0
                index = i + 1
            }
        }
        
        // 여기서 그냥 return해버려도 괜찮은 이유는 전체 합이 음수인 경우를 사전 차단했기 때문
        // 막상 알고리즘은 쉬운데 발상이 어렵다...
        return index
    }
}
