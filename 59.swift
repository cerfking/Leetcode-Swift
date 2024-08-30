//
//  59.swift
//  
//
//  Created by Sebastian on 8/29/24.
//

class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var top = 0
        var bottom = n - 1
        var left = 0
        var right = n - 1
        var num = 1
        var res = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        
        while num <= n * n {
            for i in left...right {
                res[top][i] = num
                num += 1
            }
            top += 1
            if top > bottom { break }
            
            for i in top...bottom {
                res[i][right] = num
                num += 1
            }
            right -= 1
            if left > right { break }
            
            for i in stride(from: right, through: left, by: -1) {
                res[bottom][i] = num
                num += 1
            }
            bottom -= 1
            if top > bottom { break }
            
            for i in stride(from: bottom, through: top, by: -1) {
                res[i][left] = num
                num += 1
            }
            left += 1
            if left > right { break }
        }
        
        return res
    }
}

