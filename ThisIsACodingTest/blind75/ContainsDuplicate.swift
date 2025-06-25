//
//  ContainsDuplicate.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/26/25.
//

import Foundation


class ContainsDuplicate {
    func solution(_ nums: [Int]) -> Bool {
      var set: Set<Int> = []
      for num in nums {
        if set.contains(num) {
          return true
        } else {
          set.insert(num)
        }
      }
      return false
    }
}
