//
//  Time.swift
//  ProblemSolving
//
//  Created by  유 주연 on 5/28/24.
//

import Foundation

// 00시 00분 00초 부터 n시 59분 59초까지 3이 하나라도 포함된 시각을 세어라

struct Time {
  // 완전 탐색
  func solution(n: Int) -> Int {
    var result = 0
    for h in 0 ... n {
      for m in 0 ... 59 {
        for s in 0 ... 59 {
          if "\(h)\(m)\(s)".contains("3") {
            result += 1
            continue
          }
        }
      }
    }
    return result
  }
}
