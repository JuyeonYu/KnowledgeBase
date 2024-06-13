//
//  CuttingRiceCake.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/12/24.
//

import Foundation

// 이코테 part2 201

struct CuttingRiceCake {
  func solution(target: Int, cakes: [Int]) -> Int {
    var result = 0
    var start = 0
    guard var end = cakes.max() else { return 0 }
    
    
    while start <= end {
      let middle = (start + end) / 2
      var sum = 0
      
      
      for cake in cakes {
        let cut = cake - middle
        if cut > 0 {
          sum += cut
        }
      }
      
      if sum >= target {
        result = middle
        start = middle + 1
      } else {
        end = middle - 1
      }
    }
    
    return result
    
  }
}
