//
//  56.swift
//  
//
//  Created by Sebastian on 8/16/24.
//

import Foundation
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var sorted = intervals.sorted { a, b in
            a[0] < b[0]
        }
        var result = [[Int]]()
        var left = sorted[0][0]
        var rightMostBound = sorted[0][1]
        for i in 1..<sorted.count {
            if sorted[i][0] > rightMostBound {
                result.append([left, rightMostBound])
                left = sorted[i][0]
                rightMostBound = sorted[i][1]
            } else {
                rightMostBound = max(rightMostBound, sorted[i][1])
            }
        }
        result.append([left, rightMostBound])
        return result
    }
}


