//
//  NodePriority.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 6/24/24.
//

import Foundation

struct NodePriority: Comparable {
  static func < (lhs: NodePriority, rhs: NodePriority) -> Bool {
    lhs.priority > rhs.priority
  }
  let node: Int
  let priority: Int
  
}
