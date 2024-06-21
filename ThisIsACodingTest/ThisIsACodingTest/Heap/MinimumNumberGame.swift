//
//  MinimumNumberGame.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/21/24.
// https://leetcode.com/problems/minimum-number-game/description/

import Foundation

struct MinimumNumberGame {
    func solution(_ nums: [Int]) -> [Int] {
        var pq = PriorityQueue<Int>(priority: <)
        for num in nums {
            pq.enqueue(num)
        }
        
        var result: [Int] = []
        var alicePick: Int?
        var bobPick: Int?
        
        while let n = pq.dequeue() {
            if alicePick == nil {
                alicePick = n
            } else {
                bobPick = n
            }
            
            if bobPick != nil {
                result.append(bobPick!)
                result.append(alicePick!)
                alicePick = nil
                bobPick = nil
            }
        }
        return result
    }
}
