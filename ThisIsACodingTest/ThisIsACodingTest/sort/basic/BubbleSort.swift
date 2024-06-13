//
//  BubbleSort.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/9/24.
//

import Foundation
struct BubbleSort {
  
  /*
   큰 수 뒤로 보내기
   
   O(n^2)
   좀 더 정확히는 n(n - 1) / 2
   버블 정렬은 한번 돌때마다 제일 마지막으로 제일 큰 수를 보낸다.
   그래서 두번째 중복문을 돌때마다 비교해야할 크기가 하나씩 줄어들어 1까지 줄게 된다.
   그렇기 때문에 위 수식에서 /2 를 하는 것이다.
   */
  
  func sort(data: [Int]) -> [Int] {
    var data = data
    for i in 0 ..< data.count - 1 {
      for j in 0 ..< data.count - 1 - i {
        if data[j] > data[j + 1] {
          data.swapAt(j, j + 1)
        }
      }
    }
    return data
  }
}
