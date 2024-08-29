//
//  48.swift
//  
//
//  Created by Sebastian on 8/28/24.
//
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let size = matrix.count
        //水平轴反转
        for row in 0..<size / 2 {
            for column in 0..<size {
                let temp = matrix[size - row - 1][column]
                matrix[size - row - 1][column] = matrix[row][column]
                matrix[row][column] = temp
                
            }
        }
        for row in 0..<size {
            for column in 0..<row {
                let temp = matrix[column][row]
                matrix[column][row] = matrix[row][column]
                matrix[row][column] = temp
            }
        }
        
    }
}

