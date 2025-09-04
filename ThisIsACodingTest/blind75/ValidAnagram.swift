//
//  ValidAnagram.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class ValidAnagram {
    func solution(s: String, t: String) -> Bool {
        var s1 = s.sorted()
        var s2 = t.sorted()
        return s1 == s2
    }
}
