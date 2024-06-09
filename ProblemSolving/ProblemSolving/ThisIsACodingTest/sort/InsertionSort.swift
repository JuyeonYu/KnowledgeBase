//
//  InsertionSort.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/10/24.
//

import Foundation

/*
 버블, 선택 삽입 정렬 모두 빅오는 O(n^2)로 같다.
 하지만 선택 정렬이 버블 정렬보다 swap횟수를 최적화 했듯이
 삽입 정렬도 최적화 포인트가 있다.
 그건 이미 정렬되어 있는 목록에 한해서는 빠르다는 점이다.
 어떻게 그럴까.
 
 삽입정렬은 작은 수를 앞으로 보낼 때 정렬된 상태로 보낸다.
 때문에 바로 앞의 요소가 나보다 크다면 그 앞앞 요소를 볼 필요가 없기 때문이다.
 */

struct InsertionSort {
  func sort(data: [Int]) -> [Int] {
    var data = data
    for i in 1 ..< data.count {
      for j in stride(from: i, to: 0, by: -1) {
        if data[j - 1] > data[j] {
          data.swapAt(j - 1, j)
        } else {
          break // 이 부분이 삽입정렬의 핵심
        }
      }
    }
    return data
  }
}
