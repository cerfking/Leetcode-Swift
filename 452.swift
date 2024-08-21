//
//  452.swift
//  
//
//  Created by Sebastian on 8/20/24.
//

import Foundation
class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var sorted = points
        sorted.sort { a, b in a[0] < b[0]}
        var res = 1
        for i in 1..<sorted.count {
            if sorted[i][0] > sorted[i - 1][1] {
                res += 1
            } else {
                sorted[i][1] = min(sorted[i][1], sorted[i - 1][1])
            }
        }
        return res
    }
}
