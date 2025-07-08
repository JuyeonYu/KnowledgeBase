//
//  SumOfTwoInt.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/8/25.
//

import Foundation

class SumOfTwoInt {
  func solution(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    
    
    while b != 0 {
      let carry = (a & b) << 1
      a = a ^ b
      b = carry
      
      
    }
    
    return a
  }
}
