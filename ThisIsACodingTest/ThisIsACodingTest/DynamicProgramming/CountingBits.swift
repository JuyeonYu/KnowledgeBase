//
//  CountingBits.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/14/24.
//

/*
 https://leetcode.com/problems/counting-bits/description/
 0부터 n까지 숫자들이 몇개의 비트를 갖고 있는지 리턴한다.
 DP와 비트 연산을 둘 다 해야 한다.
 n & (n - 1)을 하면 n과 n - 1에서 공통으로 갖고 있는 비트 수가 나온다. 거기에 1을 더하면 완성
 */
 

import Foundation

struct CountingBits {
    func solution(n: Int) -> [Int] {
        var result: [Int] = .init(repeating: 0, count: n + 1)
        for i in 1 ... n {
            result[i] = result[i & (i - 1)] + 1
        }
        return result
    }
}
