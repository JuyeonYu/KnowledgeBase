//
//  RotateImage.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/5/25.
//

import Foundation

class RotateImage {
  func solution(_ matrix: inout [[Int]]) {
    for i in 0 ..< matrix.count {
      for j in i + 1 ..< matrix.count {
        let temp = matrix[i][j]
        matrix[i][j] = matrix[j][i]
        matrix[j][i] = temp
      }
    }
    
    for i in 0 ..< matrix.count {
      matrix[i].reverse()
    }
  }
}
