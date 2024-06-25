//
//  모험가길드.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/25/24.
//

import Foundation

struct 모험가길드 {
  func solution(fears: [Int], n: Int) -> Int {
    let sortedFears: [Int] = fears.sorted()
    
    var result: Int = 0
    var count: Int = 0
    
    for sortedFear in sortedFears {
      count += 1
      
      if count >= sortedFear {
        result += 1
        count = 0
      }
    }
    return result
  }
}
