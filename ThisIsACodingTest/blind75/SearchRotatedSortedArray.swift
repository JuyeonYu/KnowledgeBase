//
//  SearchRotatedSortedArray.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/2/25.
//

import Foundation

class SearchRotatedSortedArray {
  func solution(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left < right {
      var mid = (left + right) / 2
      
      if nums[mid] > nums[left] {
        if target >= nums[left] && target < nums[mid] {
          right = mid - 1
        } else {
          left = mid
        }
      } else {
        if target > nums[mid] && target <= nums[right] {
          left = mid + 1
        } else {
          right = mid
        }
      }
    }
    return nums[left]
  }
}


