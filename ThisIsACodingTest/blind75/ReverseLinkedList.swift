//
//  ReverseLinkedList.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class ReverseLinkedList {
  func solution(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var curr = head

    while let node = curr {
        let next = node.next
        node.next = prev
        prev = node
        curr = next
    }
    return prev
  }
}
