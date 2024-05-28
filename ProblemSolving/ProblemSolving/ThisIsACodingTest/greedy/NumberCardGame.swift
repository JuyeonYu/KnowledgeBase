//
//  NumberCardGame.swift
//  TCT
//
//  Created by  유 주연 on 5/28/24.
//

import Foundation

// N x M 카드가 있다. 이 중 행을 먼저 선택하고 선택된 행에서 가장 낮은 숫자를 선택한다. 이 때 가장 높이 나올 수 있는 숫자는?

struct NumberCardGame {
  
  // 배열을 다 돌면서 최소 값을 업데이트하고 리턴한다
  func solution(cards: [[Int]]) -> Int {
    
    var maxInMinInRow = 0
    for card in cards {
      var minInRow = Int.max
      for number in card {
        minInRow = min(minInRow, number)
      }
      maxInMinInRow = max(maxInMinInRow, minInRow)
    }
    
    return maxInMinInRow
  }
}
