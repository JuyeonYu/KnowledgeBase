//
//  SpiralMatrix.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/5/25.
//

import Foundation

class SpiralMatrix {
  func solution(_ matrix: [[Int]]) -> [Int] {
    let m = matrix.count
    guard m > 0 else { return [] }
    let n = matrix[0].count
    
    var top = 0, bottom = m - 1
    var left = 0, right = n - 1
    var res: [Int]  = []
    res.reserveCapacity(m * n)
    
    while top <= bottom && left <= right {
      for c in left ... right { res.append(matrix[top][c]) }
      top += 1
      if top > bottom { break }
      
      for r in top ... bottom { res.append(matrix[r][right]) }
      right -= 1
      if left > right { break }
      
      if top <= bottom {
        for c in stride(from: right, through: left, by: -1) {
          res.append(matrix[bottom][c])
        }
        bottom -= 1
      }
      
      if top > bottom { break }
      
      if left <= right {
        for r in stride(from: bottom, through: top, by: -1) {
          res.append(matrix[r][left])
        }
        left += 1
      }
    }
    return res
  }
}
