//
//  Fibonacci.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/13/24.
//

import Foundation

struct Fibonacci {
  func solution(n : Int) -> Int {
    
    var a = 1
    var b = 1
    
    guard n > 1 else { return a }
    guard n > 2 else { return b }
    
    var n = n - 2
    var result = 0
    
    while n > 0 {
      n -= 1
      result = a + b
      a = b
      b = result
    }
    
    return result
  }
  
  func solution2(n: Int) -> Int {
    guard n > 1 else { return 1 }
    
    var prev = 1
    var current = 1
    
    for _ in 3 ... n {
      let next = current + prev
      prev = current
      current = next
    }
    
    return current
  }
  
  func solution3(n: Int) -> Int {
    guard n > 2 else { return 1 }
    return solution3(n: n - 1) + solution3(n: n - 2)
  }
  
  var memo: [Int: Int] = [:]
  
  mutating func solution4(n: Int) -> Int {
    guard n > 2 else { return 1 }
    if let x = memo[n]{ return x }
    
    memo[n] = solution4(n: n - 1) + solution4(n: n - 2)
    return memo[n]!
    
  }
}
