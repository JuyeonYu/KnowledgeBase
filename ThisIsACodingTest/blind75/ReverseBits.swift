//
//  ReverseBits.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class ReverseBits {
  func solution(_ n: Int) -> Int {
    var num = UInt32(n)   // 부호 없는 32비트로 변환
    var res: UInt32 = 0
    
    for _ in 0..<32 {
        res = (res << 1) | (num & 1) // 마지막 비트를 res로 이동
        num >>= 1
    }
    return Int(res)

  }
}
