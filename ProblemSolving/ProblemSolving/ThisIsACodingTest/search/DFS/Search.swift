//
//  Search.swift
//  ProblemSolving
//
//  Created by  유 주연 on 5/30/24.
//

import Foundation

struct Search {
    /*
     dfs는 인접 리스트와 인접 행렬로 구현 할 수 있음
     인접 리스트는 공간을 적게 먹는 장점이 있고
     인접 행렬은 a노드와 b노드가 이어져 있는지 확인하는게 (O)1 이다
     */
    func DFS(list: [[Int]], start: Int, visited: inout [Bool], completion: (Int) -> Void) {
        visited[start] = true

        completion(start)
        
        graph[start].forEach {
            if !visited[$0] {
                DFS(list: list, start: $0, visited: &visited, completion: completion)
            }
        }
    }
    
    func DFS(matrix: [[Int]], start: Int, visited: inout [Bool], completion: (Int) -> Void) {
        visited[start] = true
        completion(start + 1) // 인접 리스트의 경우 0번째 배열을 비워둔채로 사용하기 때문에 +1을 해줄 필요가 없었음
        
        for i in 0 ..< matrix.count {
            if matrix[start][i] == 1 && !visited[i] {
                DFS(matrix: matrix, start: i, visited: &visited, completion: completion)
            }
        }
    }  
}

