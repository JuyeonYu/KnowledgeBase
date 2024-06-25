//
//  문자열뒤집기.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/25/24.
//

import Foundation

struct 문자열뒤집기 {
  func solution(s: String) -> Int {
    let arr = Array(s)
    var count0 = 0
    var count1 = 0
    
    
    if s.first == "0" {
      count0 += 1
    } else {
      count1 += 1
    }
    
    for i in 0 ..< arr.count - 1 {
      if arr[i] != arr[i+1] {
        if arr[i+1] == "1" {
          count0 += 1
        } else {
          count1 += 1
        }
      }
    }
    return min(count0, count1)
  }
}
