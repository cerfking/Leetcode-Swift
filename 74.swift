//
//  74.swift
//  
//
//  Created by Sebastian on 8/30/24.
//


class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var left = 0
        let m = matrix.count
        let n = matrix[0].count
        var right = m * n - 1
        while left <= right {
            let mid = left + (right - left) / 2
            let row = mid / n
            let column = mid % n
            let num = matrix[row][column]
            if num > target {
                right -= 1
            } else if num < target {
                left += 1
            } else {
                return true
            }
        }
        return false
    }
}
