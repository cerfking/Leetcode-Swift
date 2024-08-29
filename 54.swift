//
//  54.swift
//  
//
//  Created by Sebastian on 8/28/24.
//

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var top = 0
        var bottom = matrix.count - 1
        var left = 0
        var right = matrix[0].count - 1
        var res = [Int]()
        while true {
            for i in left...right {
                res.append(matrix[top][i])
            }
            top += 1
            if top > bottom {
                break
            }
            for i in top...bottom {
                res.append(matrix[i][right])
            }
            right -= 1
            if right < left {
                break
            }
            for i in stride(from: right, through: left, by: -1) {
                res.append(matrix[bottom][i])
            }
            bottom -= 1
            if bottom < top {
                break
            }
            for i in stride(from: bottom, through: top, by: -1) {
                res.append(matrix[i][left])
            }
            left += 1
            if left > right {
                break
            }
        }
        return res
    }
}
