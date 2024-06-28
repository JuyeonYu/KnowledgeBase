//
//  JumpGame1.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/28/24.
//  https://leetcode.com/problems/jump-game/description/

import Foundation

// [2,3,1,1,4] = true
// [3,2,1,0,4] = false
// [2,0] = true

struct JumpGame1 {
    func solution(_ nums: [Int]) -> Bool {
        var currentMax = 0, nextMax = 0
        
        for i in 0 ..< nums.count - 1 {
            currentMax = max(currentMax, i + nums[i])
            
            if i == nextMax {
                nextMax = currentMax
            }
        }
        return nextMax >= nums.count - 1
    }
}
