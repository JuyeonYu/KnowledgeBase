//
//  Ice.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/9/24.
//

import Foundation

struct Ice {
  func solution(tray: [[Int]], maxX: Int, maxY: Int) -> Int {
    var result = 0
    var tray = tray
    
    // dfs로 첫 시작점에서 빈칸에 있는 모든 구멍을 채우기
    @discardableResult
    func dfs(x: Int, y: Int) -> Bool {
      guard x >= 0 && x < maxX && y >= 0 && y < maxY, tray[x][y] == 0 else {
        return false
      }
      
      tray[x][y] = 1
      
      dfs(x: x + 1, y: y)
      dfs(x: x - 1, y: y)
      dfs(x: x, y: y + 1)
      dfs(x: x, y: y - 1)
      
      return true
    }
    
    for i in 0 ..< maxX {
      for j in 0 ..< maxY {
        if dfs(x: i, y: j) {
          result += 1
        }
      }
    }
    
    return result
  }
}
