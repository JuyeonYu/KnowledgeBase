//
//  MaxArea.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/26/24.
//  https://leetcode.com/problems/container-with-most-water/

import Foundation

struct MaxArea {
    func solution(_ height: [Int]) -> Int { // time limit
        var result: Int = 0
        
        for i in 0 ..< height.count - 1 {
            for k in i + 1 ..< height.count {
                let min = min(height[i], height[k]) * (k - i)
                result = max(result, min)
            }
        }
        return result
    }
    
    func solution2(_ height: [Int]) -> Int { // two pointer
        var result: Int = 0
        var l: Int = 0
        var r: Int = height.count - 1
        
        while l < r {
            result = max(result, min(height[l], height[r]) * (r - l))
            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return result
    }
}


