//
//  57.swift
//  
//
//  Created by Sebastian on 8/17/24.
//

import Foundation
class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var newIntervals = intervals
        newIntervals.append(newInterval)
        newIntervals.sort { a, b in
            a[0] < b[0]
        }
        var left = newIntervals[0][0]
        var rightMostBound = newIntervals[0][1]
        var result = [[Int]]()
        for i in 1..<newIntervals.count {
            if newIntervals[i][0] > rightMostBound {
                result.append([left, rightMostBound])
                left = newIntervals[i][0]
                rightMostBound = newIntervals[i][1]
            } else {
                rightMostBound = max(rightMostBound, newIntervals[i][1])
            }
        }
        result.append([left, rightMostBound])
        return result
        
    }
}
