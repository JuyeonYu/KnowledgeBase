//
//  ThreeSum.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/2/25.
//

import Foundation

class ThreeSum {
  func solution(_ nums: [Int]) -> [[Int]] {
    let nums = nums.sorted()
    var result: [[Int]] = []

    

    for i in 0 ..< nums.count - 2 {
        if i > 0 && nums[i] == nums[i - 1] {
            continue // 중복 방지
        }

        var left = i + 1
        var right = nums.count - 1

        while left < right {
            let sum = nums[i] + nums[left] + nums[right]

            if sum == 0 {
                result.append([nums[i], nums[left], nums[right]])

                while left < right && nums[left] == nums[left + 1] {
                    left += 1
                }
                while left < right && nums[right] == nums[right - 1] {
                    right -= 1
                }

                left += 1
                right -= 1

            } else if sum < 0 {
                left += 1
            } else {
                right -= 1
            }
        }

        

    }
    return result
  }

}
