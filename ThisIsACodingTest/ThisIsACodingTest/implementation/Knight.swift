//
//  Knight.swift
//  ProblemSolving
//
//  Created by  유 주연 on 5/29/24.
//

import Foundation

// L자 형으로만 이동하는 나이트. 좌표가 주어졌을 때 이동 할 수있는 경우의 수 출력
// 지도는 a1 ~ h8까지

struct Knight {
  func solution(position: String) -> Int {
    var result = 0
    let moves: [(Int, Int)] = [
      (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2), (-2, 1), (-2, -1), (-1, -2)
    ]
    
    let position: (Int, Int) = (Int(position.first!.asciiValue! - 96), position.last!.wholeNumberValue!)
    
    for move in moves {
      let nextRow = move.0 + position.0
      let nextColumn = move.1 + position.1
      if nextRow > 0 && nextRow < 9 && nextColumn > 0 && nextColumn < 9 {
        result += 1
      }
    }
    return result
  }
}
