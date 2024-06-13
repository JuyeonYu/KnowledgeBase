//
//  UntilOne.swift
//  TCT
//
//  Created by  유 주연 on 5/28/24.
//

import Foundation

// 어떤 수가 1이 될 때까지 n에서 1을 빼거나 n을 k로 나눈다. 최소 몇 번 해야할까

struct UntilOne {
  
  // 나눌 수 있으면 나누고 없으면 뺀다.
  func solution(n: Int, k: Int) -> Int {
    var result = 0
    var n = n
    
    while n > 1 {
      result += 1
      
      if n % k == 0 {
        n /= k
      } else {
        n -= 1 // 이 부분 최적화 포인트. 1씩 빼는거 보다 한번에 K의 배수를 만들어 보자
      }
    }
    
    return result
  }
  
  func solution2(n: Int, k: Int) -> Int {
    var result = 0
    var n = n
    
    while n > 1 {
      let mod = n % k
      
      if mod == 0 {
        n /= k
        result += 1
      } else {
        n -= mod
        result += mod
      }
    }
    
    return result
  }
}
