//
//  ProductExceptSelf.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/26/25.
//

import Foundation

class productExceptSelf {
  func solution(_ nums: [Int]) -> [Int] {
    let n: Int = nums.count
    var answer: [Int] = Array(repeating: 1, count: n)
    
    var left: Int = 1
    
    for i in 0 ..< n {
      answer[i] = left
      left *= nums[i]
    }
    
    var right: Int = 1
    
    for i in (0 ..< n).reversed() {
      answer[i] *= right
      right *= nums[i]
    }
    
    return answer
    
  }

}
