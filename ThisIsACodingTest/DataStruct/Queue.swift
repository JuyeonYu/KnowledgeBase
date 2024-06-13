//
//  Queue.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/9/24.
//

import Foundation

protocol Queue {
  associatedtype T
  mutating func enqueue(_ element: T)
  mutating func dequeue() -> T? // Swift collection의 removeFirst는 O(n)
  var peak: T? { get }
  var isEmpty: Bool { get }
}

struct DoubleStackQueue<T>: Queue {
  var inbox: [T] = []
  var outbox: [T] = []
  
  mutating func enqueue(_ element: T) {
    inbox.append(element)
  }
  
  mutating func dequeue() -> T? {
    if outbox.isEmpty {
      outbox = inbox.reversed()
      inbox.removeAll()
    }
    return outbox.popLast()
  }
  
  var peak: T? {
    outbox.isEmpty ? inbox.first : outbox.last
  }
  
  
  
  var isEmpty: Bool {
    return inbox.isEmpty && outbox.isEmpty
  }
  
  
}
