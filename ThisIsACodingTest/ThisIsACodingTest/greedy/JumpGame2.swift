//
//  JumpGame2.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/28/24.
//  https://leetcode.com/problems/jump-game-ii/description/

import Foundation

struct JumpGame2 {
    func solution(_ nums: [Int]) -> Int {
        var count = 0, currentMax = 0, nextMax = 0
        
        for i in 0 ..< nums.count - 1 {
            currentMax = max(currentMax, i + nums[i])
            
            if i == nextMax {
                nextMax = currentMax
                count += 1
            }
        }
        
        return count
    }
}
