//
//  BinarySearch.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/12/24.
//

import Foundation

struct BinarySearch {
  func search(list: [Int], target: Int) -> Int? {
    var start = 0
    var end = list.count - 1
    
    
    while start <= end {
      var middle = (start + end) / 2
      
      if list[middle] == target {
        return middle
      } else if list[middle] > target {
        end = middle - 1
      } else {
        start = middle + 1
      }
      middle = (start + end) / 2
    }
    return nil
  }
}
