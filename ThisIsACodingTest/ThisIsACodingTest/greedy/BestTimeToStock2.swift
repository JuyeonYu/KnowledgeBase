//
//  BestTimeToStock2.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/28/24.
//  https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

import Foundation

// [7,1,5,3,6,4] = 7
// [1,2,3,4,5] = 4
// [7,6,4,3,1] = 0

// 내일이 오늘보다 비싸면 오늘사고 내일 팔고 반복

struct BestTimeToStock2 {
    func solution(_ prices: [Int]) -> Int {
        var maxProfit = 0
        
        for i in 1 ..< prices.count {
            if prices[i] > prices[i - 1] {
                maxProfit += prices[i] - prices[i - 1]
            }
        }
        return maxProfit
    }
}
