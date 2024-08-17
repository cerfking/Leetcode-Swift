//
//  128.swift
//  
//
//  Created by Sebastian on 8/16/24.
//

import Foundation
class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for num in nums {
            set.insert(num)
            
        }
        var longestLength = 0
        for num in set {
            if !set.contains(num - 1) {
                var curLength = 1
                var curNum = num
                while(set.contains(curNum + 1)) {
                    curNum += 1
                    curLength += 1
                }
                longestLength = max(longestLength, curLength)
            }
        }
        return longestLength
    }
}
