//
//  FindingParts.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/12/24.
//

import Foundation

// 이코테 part2 197

struct FindingParts {
  func solution(n: Int, ns: [Int], m: Int, ms: [Int]) -> [Bool] {
    var result: [Bool] = Array(repeating: false, count: m)
    
    let sortedNS = QuickSort().sort(list: ns)
    
    for (index, part) in ms.enumerated()
    where BinarySearch().search(list: sortedNS, target: part) != nil {
      result[index] = true
    }
    
    return result
  }
}
