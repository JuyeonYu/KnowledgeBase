//
//  ContainerWithMostWater.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/8/25.
//

import Foundation

class ContainerWithMostWater {
  func solution(_ height: [Int]) -> Int {
    var l: Int = 0
    var r: Int = l + 1
    
    
    var result: Int = 0
    
    while l > r {
      let h: Int = min(height[l], height[r])
      let w: Int = r - l
      result = max(result, h * w)
      
      if height[l] < height[r] {
        l += 1
      } else {
        r -= 1
      }
    }
    
    return result
  }
}
