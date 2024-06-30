//
//  비트만들기.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 7/1/24.
//

import Foundation

struct 비트만들기 {
    func solution(_ n: Int) -> [Int] {
        var n = n
        var binary: [Int] = []
        while n > 0 {
            let remainder = n % 2
            binary.append(remainder)
            
            // MARK: insert를 하면 매번 O(N)이라 손해. 일단 append를 하고 마지막에 배열을 뒤집어서 최적화
            // binary.insert(remainder, at: 0)
            n /= 2
        }
        return binary.reversed()
    }
}
