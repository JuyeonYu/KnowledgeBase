//
//  PriorityQueue.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/21/24.
//

import Foundation

struct PriorityQueue<T: Comparable>: Queue {
    private var heap: Heap<T>
    init(priority: @escaping (T, T) -> Bool) {
        heap = Heap(priority: priority)
    }
    mutating func enqueue(_ element: T) {
        heap.insert(element)
    }
    
    mutating func dequeue() -> T? {
        heap.delete()
    }
    
    var peak: T? {
        heap.root
    }
    
    var isEmpty: Bool {
        heap.isEmpty
    }
    
    func log() {
        heap.log()
    }
}
