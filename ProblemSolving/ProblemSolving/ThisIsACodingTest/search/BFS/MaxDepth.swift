//
//  MaxDepth.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/10/24.
//

import Foundation

/*
 https://leetcode.com/problems/maximum-depth-of-binary-tree/
 
 두번째 풀이는 솔루션을 보고 더 깔끔한 코드를 참조함
 */

struct MaxDepth {
//        [3,9,20,null,null,15,7]
    var root: TreeNode!
    
    init() {
        root = .init(3)
        root.left = .init(9)
        
        let p2 = TreeNode(20)
        root.right = p2
    
        p2.left = .init(15)
        p2.right = .init(7)
    }
        
        
    
        
    //        [3,9,20,null,null,15,7]
    func solution() -> Int {
        var result = 0
        
        func depth(_ root: TreeNode?, d: Int, completion: (Int) -> Void) {
            guard let root else { return }
            let d = d + 1
            completion(d)
            depth(root.left, d: d, completion: completion)
            depth(root.right, d: d, completion: completion)
        }
        
        depth(root, d: result) {
            result = max(result, $0)
        }
        
        return result
    }
    
    func solution2(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        return max(solution2(root?.left), solution2(root?.right)) + 1
    }
}
