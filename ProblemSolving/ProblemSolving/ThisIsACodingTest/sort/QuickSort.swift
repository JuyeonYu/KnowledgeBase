//
//  QuickSort.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/10/24.
//

import Foundation

// filter로 파티션을 나누게 되면 2n이 걸림. for문으로 left, right 변수를 사용하면 n번으로 끝낼 수 있음

struct QuickSort {
  func sort(list: [Int]) -> [Int] {
    guard let pivot = list.first, list.count > 1 else { return list }
    let left = list.filter { $0 < pivot }
    let middle = list.filter { $0 == pivot }
    let right = list.filter { $0 > pivot }
    return sort(list: left) + middle + sort(list: right)
  }
}
