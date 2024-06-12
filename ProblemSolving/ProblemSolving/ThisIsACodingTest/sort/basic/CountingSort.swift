//
//  CountingSort.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/12/24.
//

import Foundation

/*
 O(n + k)
 양수로만 이루어진 리스트이면서 최대값이 작을 때 유리함
 */

struct CountingSort {
    func sort(_ list: [Int]) -> [Int] {
        guard let max = list.max() else { return list }
        var countingArray: [Int] = Array(repeating: 0, count: max + 1) // 값이 index에 직접 접근하기 위해 +1을 해줌
        var sortedArray: [Int] = []
        
        for element in list {
            countingArray[element] += 1
        }
        
        for (index, element) in countingArray.enumerated() {
            for _ in 0 ..< element {
                sortedArray.append(index)
            }
        }
        
        
        return sortedArray
    }
}
