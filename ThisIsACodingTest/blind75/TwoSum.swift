//
//  평범한배낭.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/25/25.
/* https://leetcode.com/problems/two-sum/description/
 
 딕셔너리를 쓰는게 기믹.
 On2 -> On으로 가능.
 
*/

import Foundation

struct twoSum {
  func solution1(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0 ..< nums.count - 1 {
      for j in i + 1 ..< nums.count {
        if nums[i] + nums[j] == target {
          return [i, j]
        }
      }
    }
    return []
  }
  
  func solution2(_ nums: [Int], _ target: Int) -> [Int] {
    var bin: [Int: Int] = [:]
    for i in 0 ..< nums.count {
      if let answer = bin[target - nums[i]] {
        return [i, answer]
      } else {
        bin[nums[i]] = i
      }
    }
    return []
  }
}
