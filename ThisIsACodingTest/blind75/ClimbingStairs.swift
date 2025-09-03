//
//  ClimbingStairs.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/3/25.
//

import Foundation

class ClimbingStairs {
  func solution(_ n: Int) -> Int {
    if n < 3 {
        return n
    }

    var one = 1
    var two = 2

    for _ in 3 ... n {
        let temp = one + two
        one = two
        two = temp
    }
    return two
  }
}
