//
//  ValidPalindrome.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class ValidPalindrome {
  func solution(_ s: String) -> Bool {
    let chars = Array(s.lowercased()).filter { $0.isLetter || $0.isNumber }

    var left = 0
    var right = chars.count - 1
    
    while left < right {
      if chars[left] != chars[right] {
        return false
      }
      left += 1
      right -= 1
    }
    return true
  }
}
