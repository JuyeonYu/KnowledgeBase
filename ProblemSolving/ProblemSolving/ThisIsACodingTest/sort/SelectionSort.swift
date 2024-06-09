//
//  SelectionSort.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/9/24.
//

import Foundation

/*
 작은 수 앞으로 보내기
 버블 정렬과 반복수는 같다. 하지만 swap하는 횟수가 많이 차이난다.
 버블 정렬은 안쪽 반복문에서 비교문을 통과할 때마다 swap한다.
 허지만 선택 정렬은 안쪽 반복문 횟수만큼만 swap한다.
 선택 정렬은 min이라는 변수를 추가로 사용하기 때문에 swap의 횟수를 줄일 수 있다.
 */

struct SelectionSort {
  func sort(data: [Int]) -> [Int] {
    var data = data
    for i in 0 ..< data.count - 1 {
      
      var minIndex = i
      
      for j in i + 1 ..< data.count {
        if data[j] < data[minIndex] {
          minIndex = j
        }
      }
      
      if minIndex != i {
        data.swapAt(i, minIndex)
      }
      
    }
    return data
  }
}
