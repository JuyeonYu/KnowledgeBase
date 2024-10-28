//
//  위에서아래로.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 10/28/24.
//

import Foundation

// 이코테 part2
// TODO: 오름차순 내림차순을 파라미터로 받아서

struct 위에서아래로 {
  func solotion(nums: [Int]) -> [Int] {
    quickSort(nums: nums)
  }
  
  func quickSort(nums: [Int]) -> [Int] {
    guard let pivot = nums.first, nums.count > 1 else { return nums }
    
    var left: [Int] = []
    var middle: [Int] = []
    var right: [Int] = []
    
    for num in nums {
      if num < pivot {
        left.append(num)
      } else if num == pivot {
        middle.append(num)
      } else {
        right.append(num)
      }
    }
    return quickSort(nums: right) + quickSort(nums: middle) + quickSort(nums: left)
  }
}
