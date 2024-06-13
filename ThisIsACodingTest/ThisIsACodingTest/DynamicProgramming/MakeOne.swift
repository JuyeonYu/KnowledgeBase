//
//  MakeOne.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/13/24.
//


/*
 최대 크기 30000
 n을 1로 만들기 최소 한의 횟수를 구하라
 1을 빼도 되고 2로 나뉘면 2로 3으로 나뉘면 3으로 5로 나뉘면 5로 나눈다
 
 n이 1이 되는 가장 최소한의 횟수는 n - 1이 1이 되는데 최소 횟수 + 1이거나 (-1을 하면 되니까)
 2, 3, 5로 나뉘어 떨어지면 각 숫자로 나뉜 숫자가 1이 되는데 최소 횟수 + 1이다.
 
 */
import Foundation

class MakeOne {
  var memo: [Int] = Array(repeating: 0, count: 30001)
  func solution(n: Int) -> Int {
    
    for i in  2 ... n {
      memo[i] = memo[i - 1] + 1
      
      if i % 2 == 0 {
        memo[i] = min(memo[i], memo[i / 2] + 1)
      } else if i % 3 == 0 {
        memo[i] = min(memo[i], memo[i / 3] + 1)
      } else if i % 5 == 0 {
        memo[i] = min(memo[i], memo[i / 5] + 1)
      }
    }
    return memo[n]
  }
}
