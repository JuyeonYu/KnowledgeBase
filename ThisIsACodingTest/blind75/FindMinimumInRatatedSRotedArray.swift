//
//  FindMinimumInRatatedSRotedArray.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/1/25.
//

import Foundation

class FindMinimumInRatatedSRotedArray {
  func solution(_ nums: [Int]) -> Int {
    // logn
    
    var left: Int = 0
    var right: Int = nums.count - 1
    
    while left < right {
      let middle = (left + right) / 2
      
      if nums[middle] > nums[right] {
        left = middle + 1
      } else {
        right = middle
      }
    }
    return nums[left]
    
    // nlogn
//    return quickSort(num)[0]
    
    
  }
  
  func quickSort(_ nums: [Int]) -> [Int] {
    guard let pivot = nums.first else { return [] }
    
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
    
    return quickSort(left) + middle + quickSort(right)
    
  }
}
