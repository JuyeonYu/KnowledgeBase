//
//  PascalTriangle.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/17/24.
//
/*
 https://leetcode.com/problems/pascals-triangle/
 */


import Foundation

struct PascalTriangle {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 1 else { return [[1]] }
        guard numRows > 2 else { return [[1], [1, 1]] }
        
        var result: [[Int]] = [[1], [1, 1]]
        
        for i in 3 ... numRows {
            var inner: [Int] = .init(repeating: 0, count: i)
            inner[0] = 1
            inner[i - 1] = 1
            
            for j in 1 ..< i - 1 {
                inner[j] = result[i - 2][j - 1] + result[i - 2][j]
            }
            result.append(inner)
        }
        
        return result
    }
}
