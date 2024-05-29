//
//  CanPlaceFlower.swift
//  ProblemSolving
//
//  Created by  유 주연 on 5/29/24.
//

import Foundation

// https://leetcode.com/problems/can-place-flowers/description/

struct CanPlaceFlower {
    func solution(_ flowerbed: [Int], _ n: Int) -> Bool {
        var r = 0
        var n = n
        var flowerbed = flowerbed
        
        guard flowerbed.count > 0 else {
            return false
        }
        guard flowerbed.count > 1 else {
            return flowerbed[0] == 0
        }
        
        while r < flowerbed.count {
            if r == flowerbed.count - 1 {
                if flowerbed[r] == 0 && flowerbed[r - 1] != 1 {
                    flowerbed[r] = 1
                    n -= 1
                }
                break
            } else if flowerbed[r] == 0 && flowerbed[r + 1] == 0 {
                flowerbed[r] = 1
                flowerbed[r + 1] = -1
                n -= 1
            } else if flowerbed[r] == 1 {
                flowerbed[r + 1] = -1
            }
            
            r += 1
        }

        return n == 0
    }
}
