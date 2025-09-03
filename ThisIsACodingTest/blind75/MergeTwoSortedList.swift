//
//  MergeTwoSortedList.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/3/25.
//

import Foundation

public class ListNode {
 public var val: Int
 public var next: ListNode?
 public init() { self.val = 0; self.next = nil; }
 public init(_ val: Int) { self.val = val; self.next = nil; }
 public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class MergeTwoSortedList {
  func solution(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var p1 = list1
    var p2 = list2
    
    var result: ListNode = .init(-1)
    var current: ListNode = result
    
    if p1 == nil {
      return p2
    }
    
    if p2 == nil {
      return p1
    }
    
    while p1 != nil && p2 != nil {
      if (p1?.val ?? -1) < (p2?.val ?? -1) {
        current.next = p1
        p1 = p1!.next
      } else {
        current.next = p2
        p2 = p2!.next
      }
      current = current.next!
    }
    current.next = p1 ?? p2
    return result.next
  }
}
