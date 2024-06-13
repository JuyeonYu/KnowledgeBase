//
//  큰수의법칙.swift
//  TCT
//
//  Created by  유 주연 on 5/27/24.
//

import Foundation

// n의 크기인 list가 주어졌을 때 m번 더해서 가장 큰수를 만들어라 (단 같은 숫자는 k번 만큼만 반복해서 더할 수 있음)
struct RuleOfBigNumber {
  
  
  // 제일 큰 수 k번 두번째 큰 수 1번을 m번 반복하면 됨
  func solution(list: [Int], n: Int, m: Int, k: Int) -> Int {
    let sorted = list.sorted(by: >)
    let bigest = sorted[0]
    let bigger = sorted[1]
    var kCheck = 0
    var result = 0
    
    for _ in 0 ..< m {
      if kCheck == k {
        kCheck = 0
        result += bigger
      } else {
        kCheck += 1
        result += bigest
      }
    }
    return result
  }
  
  // sol1은 list가 커지면 느려짐. 수열을 미리 계산하면 더 효율적임
  func solution2(list: [Int], n: Int, m: Int, k: Int) -> Int {
    let sorted = list.sorted(by: >)
    let bigest = sorted[0]
    let bigger = sorted[1]
    var result = 0
    
    var count = m / (k + 1) * k
    count += m % (k + 1)
    
    result += count * bigest
    result += (m - count) * bigger
    
    return result
    
  }

}


