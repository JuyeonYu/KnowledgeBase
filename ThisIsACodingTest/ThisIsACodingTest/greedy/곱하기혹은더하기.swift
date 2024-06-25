//
//  곱하기혹은더하기.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/25/24.
//

import Foundation

struct 곱하기혹은더하기 {
  func solotion(s: String) -> Int {
    var result = 0
    let arr = Array(s)
    for i in 0 ..< arr.count {
      let num = arr[i].wholeNumberValue!
      
      if num <= 1 || result <= 1 {
        result += num
      } else {
        result *= num
      }
    }
    return result
  }
}
