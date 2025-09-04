//
//  MissingNumber.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class MissingNumber {
    func solution(_ nums: [Int]) -> Int {
        var sorted = nums.sorted()
        
        for i in 0 ..< sorted.count {
            if i != sorted[i] {
                return i
            }
        }
        
        return sorted.count
    }
    
    func solution2(_ nums: [Int]) -> Int {
        let n = nums.count
        let expected = n * (n - 1) / 2
        let actual = nums.reduce(0, +)
        return expected - actual
    }
}
