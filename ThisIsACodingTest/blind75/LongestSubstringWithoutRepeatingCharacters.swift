//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

/*
 prev >= left 이 조건이 핵심
 순회를 하면서 왼쪽 기준점을 중복 문자를 만나면 갱신하는데
 무턱대고 갱신하면 안됨. 현재 윈도우 안에서만 갱신 필요
 */


import Foundation

class LongestSubstringWithoutRepeatingCharacters {
    func solution(_ s: String) -> Int {
        let chars = Array(s)
        var bin: [Character: Int] = [:]
        var left = 0
        var result: Int = 0
        
        for (right, c) in chars.enumerated() {
            if let prev = bin[c], prev >= left { // prev >= left
                left = prev + 1
            }
            bin[c] = right
            result = max(result, right - left + 1)
        }
        
        return result
    }
}
