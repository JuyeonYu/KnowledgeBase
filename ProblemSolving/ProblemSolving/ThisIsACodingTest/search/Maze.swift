//
//  Maze.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/9/24.
//

import Foundation

struct Maze {
  func solution(maze: [[Int]], maxX: Int, maxY: Int) -> Int {
    var result = 0
    var maze = maze
    
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    var q: [(Int, Int)] = []
    
    func bfs(x: Int, y: Int) -> Int {
      q.append((x, y))
      
      while !q.isEmpty {
        let point = q.removeFirst()
        
        
        for i in 0 ..< 4 {
          let nx = point.0 + dx[i]
          let ny = point.1 + dy[i]
          
          guard nx >= 0, ny >= 0, nx < maxX, ny < maxY, maze[nx][ny] == 1 else {
            continue
          }
          
          maze[nx][ny] = maze[point.0][point.1] + 1
          q.append((nx, ny))
        }
        
      }
      return maze[maxX - 1][maxY - 1]
    }
    
    return bfs(x: 0, y: 0)
  }
}
