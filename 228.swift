//
//  228.swift
//  
//
//  Created by Sebastian on 8/16/24.
//

import Foundation
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var res = [String]()
        var i = 0
        for j in 0..<nums.count {
            
            if j + 1 == nums.count || nums[j + 1] != nums[j] + 1 {
                var sb = ""
                sb.append(String(nums[i]))
                if i != j {
                    sb.append("->\(nums[j])")
                }
                i = j + 1
                res.append(sb)
            }
            
        }
        return res
    }
}
