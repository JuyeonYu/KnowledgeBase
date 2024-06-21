//
//  Heap.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/21/24.
//

import Foundation

struct Heap<T: Comparable> {
    private var priority: ((T, T) -> Bool)
    var heap: [T] = []
    
    
    init(element: T, priority: @escaping ((T, T) -> Bool)) {
        self.heap.append(element)
        self.heap.append(element)
        self.priority = priority
    }
    
    mutating func insert(_ element: T) {
        guard !heap.isEmpty else {
            heap.append(element)
            heap.append(element)
            return
        }
        
        /*
         힙 삽입 과정
         1. 제일 마지막에 일단 삽입한다.
         2. 부모 노드의 숫자와 삽입된 숫자를 비교하고 우선순위가 내가 높다면 교환한다.
         3. 2의 과정을 우선순위가 부모가 높거나 루트 노드까지 갔을 때 까지 반복한다.
         */
        
        heap.append(element)
        swimUp()
    }
    
    var root: T? {
        guard heap.count > 1 else { return nil }
        return heap[1]
    }
    
    mutating func delete() -> T? {
        guard heap.count > 1 else { return nil }
        
        /*
         힙 삭제 과정
         1. 루트 노드와 마지막 노드를 바꾼다.
         2. 새롭게 루트 노트가 된 노드와 자식 노드를 비교해 가며  우선순위에 따라 교환한다.
         3. 2의 과정을 우선순위가 내가 높거나 마지막까지 반복한다.
         */
        let result = heap[1]
        
        /*
         여기 예외처리 안하면
         heap[1] = heap.removeLast() 할 때 heap[1]에 접근을 못함
         // TODO: 예외처리 좀 더 깔끔하게 작성
         */
        if heap.count == 2 {
            return heap.removeLast()
        } else {
            heap[1] = heap.removeLast()
            diveDown()
            return result
        }
    }
    
    mutating private func swimUp() {
        var currentIndex = heap.count - 1
        var parentIndex = currentIndex / 2
        
        while priority(heap[currentIndex], heap[parentIndex]) && parentIndex > 0 {
            heap.swapAt(currentIndex, parentIndex)
            currentIndex = parentIndex
            parentIndex = currentIndex / 2
        }
    }
    mutating private func diveDown() {
        heap.swapAt(1, heap.count - 1)
        
        var currentIndex = 1
        var leftChildIndex = currentIndex * 2
        var rightChildIndex = currentIndex * 2 + 1
        
        /*
         자식 인덱스와 비교하는 부분이 좀 까다로움
         왼쪽 자식만 있는 경우와 왼쪽 오른쪽 둘 다 있는 경우를 고려해야함
         일단 "왼쪽 자식이 있다면", 으로 시작하고 있으면 오른쪽도 있냐고 물어보는게 코드 짜기 편함
         힙에서는 오른쪽 자식만 있는 경우는 없기 때문임
         */
        while leftChildIndex < heap.count {
            var compareIndex = leftChildIndex
            if rightChildIndex < heap.count && priority(heap[rightChildIndex], heap[leftChildIndex]) {
                compareIndex = rightChildIndex
            }
            guard priority(heap[compareIndex], heap[currentIndex]) else { break }
            
            heap.swapAt(compareIndex, currentIndex)
            currentIndex = compareIndex
            leftChildIndex = currentIndex * 2
            rightChildIndex = currentIndex * 2 + 1
        }
    }
    
    func log() {
        guard !isEmpty else {
            print("heap is empty")
            return
        }
        print(heap[1...])
    }
    
    var isEmpty: Bool {
        heap.count <= 1
    }
}
