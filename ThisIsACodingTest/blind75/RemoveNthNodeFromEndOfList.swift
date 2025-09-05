//
//  RemoveNthNodeFromEndOfList.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/5/25.
//

import Foundation

class RemoveNthNodeFromEndOfList {
    func solution(_ head: ListNode?, _ n : Int) -> ListNode? {
        let dummy: ListNode = .init(0, head)
        var slow: ListNode? = dummy
        var fast: ListNode? = dummy
        
        for _ in 0 ... n {
            fast = fast?.next
        }
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next
        }
        
        slow?.next = slow?.next?.next
        
        return dummy.next
    }
}
