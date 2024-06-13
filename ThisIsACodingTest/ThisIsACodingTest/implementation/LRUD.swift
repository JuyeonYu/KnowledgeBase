//
//  LRUD.swift
//  ProblemSolving
//
//  Created by  유 주연 on 5/28/24.
//

import Foundation

// M x M 좌표에서 LRUD로 움직였을 때 최종 위치한 좌표를 구하라 (1, 1부터 시작)

struct LRUD {
  func solution(m: Int, footPrints: String) -> String {
    var result = [1, 1]
    
    for footPrint in footPrints {
      if footPrint == "L" && result[1] > 1 {
        result[1] -= 1
      } else if footPrint == "R" && result[1] < m {
        result[1] += 1
      } else if footPrint == "U" && result[0] > 1 {
        result[0] -= 1
      } else if result[1] < m {
        result[0] += 1
      }
    }
    
    return "\(result[0]) \(result[1])"
  }
}
