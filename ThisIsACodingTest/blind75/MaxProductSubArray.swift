//
//  MaxProductSubArray.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/1/25.
//

import Foundation

class MaxProductSubArray {
  func solution(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    
    var maxProduct = nums[0]
    var currentMax = nums[0]
    var currentMin = nums[0]
    
    for i in 1..<nums.count {
      let num = nums[i]
      
      if num < 0 {
        swap(&currentMax, &currentMin)
      }
      
      currentMax = max(num, currentMax * num)
      currentMin = min(num, currentMin * num)
      
      maxProduct = max(maxProduct, currentMax)
    }
    
    return maxProduct
  }
}
