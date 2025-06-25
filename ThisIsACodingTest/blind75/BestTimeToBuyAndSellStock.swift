//
//  BestTimeToBuyAndSellStock.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/26/25.
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

import Foundation

class BestTimeToBuyAndSellStock {
  // time limit
    func solution1(_ prices: [Int]) -> Int {
      var result = 0
        for i in 0 ..< prices.count - 1 {
          for j in i + 1 ..< prices.count {
              result = max(result, prices[j] - prices[i])
          }
      }
      return result
    }
  
  func solution2(_ prices: [Int]) -> Int {
    var minPrice = Int.max
    var maxPrice = 0
    
    for price in prices {
      minPrice = min(minPrice, price)
      maxPrice = max(maxPrice, price - minPrice)
    }
    
    return maxPrice
  }
}
