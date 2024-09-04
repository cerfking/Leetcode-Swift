//
//  52.swift
//  
//
//  Created by Sebastian on 9/3/24.
//

import Foundation
class Solution {
    var res = 0
    func totalNQueens(_ n: Int) -> Int {
        var chessboard = [[Character]](repeating: [Character](repeating: ".", count: n), count: n)
        backtracking(row: 0, n: n, chessboard: &chessboard)
        return res
    }
    
    func backtracking(row: Int, n: Int, chessboard: inout [[Character]]) {
        if row == n {
            res += 1
            return
        }
        for column in 0..<n {
            if isValid(row: row, column: column, n: n, chessboard: chessboard) {
                chessboard[row][column] = "Q"
                backtracking(row: row + 1, n: n, chessboard: &chessboard)
                chessboard[row][column] = "."
            }
        }
    }
    
    func isValid(row: Int, column: Int, n: Int, chessboard: [[Character]]) -> Bool {
        for i in 0..<row {
            if chessboard[i][column] == "Q" {
                return false
            }
        }
        var i = row - 1
        var j = column - 1
        while i >= 0 && j >= 0 {
            if chessboard[i][j] == "Q" {
                return false
            }
            i -= 1
            j -= 1
        }
        i = row - 1
        j = column + 1
        while i >= 0 && j < n {
            if chessboard[i][j] == "Q" {
                return false
            }
            i -= 1
            j += 1
        }
        return true
    }
}
