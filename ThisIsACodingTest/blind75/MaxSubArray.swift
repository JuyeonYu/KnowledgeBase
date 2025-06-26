//
//  MaxSubArray.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/26/25.
//

import Foundation
class MaxSubArray {
  func solution(_ nums: [Int]) -> Int {
    var answer = nums[0]
    var currentSum = nums[0]
    
    for num in nums[1...] {
      currentSum = max(answer + num, num)
      answer = max(answer, currentSum)
    }
    return answer
    
  }

}


