//
//  LinkedListCycle.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/4/25.
//

import Foundation

class LinkedListCycle {
  func solution(_ head: ListNode?) -> Bool {
    var r1 = head
    var r2 = head?.next

    while r2 != nil {
        if r1 === r2 {
            return true
        }

        r1 = r1?.next
        r2 = r2?.next?.next
    }
    return false
  }
}
