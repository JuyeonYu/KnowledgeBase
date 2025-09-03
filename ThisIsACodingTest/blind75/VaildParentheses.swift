//
//  VaildParentheses.swift
//  KnowledgeBase
//
//  Created by  유 주연 on 9/3/25.
//

import Foundation

class VaildParentheses {
  func solution(_ s: String) -> Bool {
    var stack: [Character] = []
    let openers: Set<Character> = ["(", "[", "{"]
  
    for c in s {
      if openers.contains(c) {
        stack.append(c)
      } else {
        guard let lastOpener = stack.last else {
          return false
        }
        
        switch c {
          case ")":
          if lastOpener == "(" {
            stack.removeLast()
          } else {
            return false
          }
          case "]":
          if lastOpener == "[" {
            stack.removeLast()
          } else {
            return false
          }
        case "}":
          if lastOpener == "{" {
            stack.removeLast()
          } else {
            return false
          }
        default:
          break
        }
      }
    }
    return stack.isEmpty
  }
}
