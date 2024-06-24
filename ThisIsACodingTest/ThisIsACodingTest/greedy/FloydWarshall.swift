//
//  FloydWarshall.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/24/24.
//

import Foundation

struct FloydWarshall {
  let graph: [[Int]] = [
      [0, 4, Int.max, 6],
      [3, 0, 7, Int.max],
      [5, Int.max, 0, 4],
      [Int.max, Int.max, 2, 0]
  ]
  
  func solution() -> [[Int]] {
    var dist = graph
    for i in 0 ..< graph.count {
      for j in 0 ..< graph.count {
        for k in 0 ..< graph.count {
          if i == j || i == k || j == k {
            continue
          }
          
          if dist[i][k] == Int.max || dist[k][j] == Int.max {
            continue
          }
          
          if dist[i][k] + dist[k][j] < dist[i][j] {
            dist[i][j] = dist[i][k] + dist[k][j]
          }
        }
      }
    }
    
    return dist
  }
}
