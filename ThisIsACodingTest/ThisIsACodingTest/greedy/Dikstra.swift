//
//  Dikstra.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/24/24.
//

import Foundation

struct Dikstra {
  
  let graph: [Int: [Int: Int]] = [
      1 : [2: 2, 3: 5, 4: 1],
      2 : [3: 3],
      3 : [6: 5],
      4 : [3: 3, 5: 1],
      5 : [3: 1, 6: 2],
      6 : [:]
  ]

  func solution(start: Int, end: Int) -> Int {
    var distances: [Int: Int] = [:]
    
    for key in graph.keys {
      let value = key == start ? 0 : Int.max
      distances.updateValue(value, forKey: key)
    }
    
    var pq = PriorityQueue<NodePriority>(priority: >)
    pq.enqueue(NodePriority(node: start, priority: 0))
    
    while !pq.isEmpty {
      guard let popped = pq.dequeue() else { break }
      
      if distances[popped.node]! < popped.priority {
        continue
      }
      
      for (node, priority) in graph[popped.node]! {
        let distance = priority + popped.priority
        if distance < distances[node]! {
          distances[node] = distance
          pq.enqueue(.init(node: node, priority: distance))
        }
      }
      
    }
    return distances[end]!
  }
}
