//
//  MergeIntervals.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/5/25.
//

import Foundation

class MergeIntervals {
  func solution(_ intervals: [[Int]]) -> [[Int]] {
    guard !intervals.isEmpty else { return [] }
    let sorted = intervals.sorted { $0[0] < $1[0] }
    
    var res: [[Int]] = []
    res.reserveCapacity(sorted.count)
    
    for cur in sorted {
        if res.isEmpty || res[res.count - 1][1] < cur[0] {
            // 겹치지 않음: 새 구간 추가
            res.append(cur)
        } else {
            // 겹침: 끝값을 최댓값으로 갱신
            let i = res.count - 1
            res[i][1] = max(res[i][1], cur[1])
        }
    }
    return res
  }
}
