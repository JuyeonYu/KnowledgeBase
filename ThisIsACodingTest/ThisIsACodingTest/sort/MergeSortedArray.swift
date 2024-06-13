//
//  MergeSortedArray.swift
//  ProblemSolving
//
//  Created by  유 주연 on 6/11/24.
//

import Foundation

/*
 https://leetcode.com/problems/merge-sorted-array/
 
 num1 앞에 m개와 num2앞 n개를 하나로 정렬한다.
 */

struct MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = Array(nums1[0 ..< m])
        nums1.append(contentsOf: nums2[0 ..< n])
        nums1 = QuickSort().sort(list: nums1)
    }
    
    func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        
        while i >= 0 && j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            
            k -= 1
        }
        
        while j >= 0 {
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
        }
    }
}
