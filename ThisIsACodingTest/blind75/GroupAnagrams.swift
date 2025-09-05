//
//  GroupAnagrams.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/5/25.
//

import Foundation

class GroupAnagrams {
  func solution(_ strs: [String]) -> [[String]] {
    var bucket: [String: [String]] = [:]
    
    for s in strs {
      let key = String(s.sorted())
      bucket[key, default: []].append(s)
    }
    return Array(bucket.values)
  }
}
