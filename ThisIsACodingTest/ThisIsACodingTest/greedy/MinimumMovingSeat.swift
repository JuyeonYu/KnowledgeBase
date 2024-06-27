//
//  MinimumMovingSeat.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/26/24.
//  https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/
//  통과는 되지만 실행속도가 너무 느림

import Foundation

struct MinimumMovingSeat {
    func solution(seats: [Int], students: [Int]) -> Int {
        let sortedSeats = seats.sorted()
        let sortedStudents = students.sorted()

        var result: Int = 0

        for i in 0 ..< sortedSeats.count {
            result += abs(sortedSeats[i] - sortedStudents[i])
        }
        return result
    }
}
