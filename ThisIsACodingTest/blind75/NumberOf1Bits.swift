//
//  NumberOf1Bits.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class NumberOf1Bits {
    func solution(_ n: Int) -> Int {
        var count = 0
        var num = n
        for _ in 0 ..< 32 {
            count += (n & 1)
            num >>= 1
        }
        return count
    }
}
