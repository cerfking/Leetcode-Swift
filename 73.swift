//
//  73.swift
//  
//
//  Created by Sebastian on 8/28/24.
//

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let m = matrix.count
        let n = matrix[0].count
        var rows = [Bool](repeating: false, count: m)
        var columns = [Bool](repeating: false, count: n)
        for i in 0..<m {
            for j in 0..<n {
                if matrix[i][j] == 0 {
                    rows[i] = true
                    columns[j] = true
                }
            }
        }
        for i in 0..<m {
            for j in 0..<n {
                if rows[i] == true || columns[j] == true {
                    matrix[i][j] = 0
                }
            }
        }
        
    }
}
