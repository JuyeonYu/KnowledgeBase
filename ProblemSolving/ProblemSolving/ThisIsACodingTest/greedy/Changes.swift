//
//  Changes.swift
//  TCT
//
//  Created by  유 주연 on 5/27/24.
//

import Foundation


// 거스름돈

struct Changes {
  
  // n을 구성하는 최소 동전 갯수를 구하라
  func solution(n: Int) -> Int {
    var n = n
    var result = 0
    let coinTypes: [Int] = [500, 100, 50, 10]
    
    for coinType in coinTypes {
      result += n / coinType
      n %= coinType
    }
    
    return result
  }
}


