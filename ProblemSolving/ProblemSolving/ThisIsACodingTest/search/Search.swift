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
    func DFS(list: [[Int]], start: Int, visited: [Bool], completion: (Int) -> Void) {
        var visited = visited
        visited[start] = true

        completion(start)
        
        graph[start].forEach {
            if !visited[$0] {
                DFS(list: list, start: $0, visited: visited, completion: completion)
            }
        }
    }
}

