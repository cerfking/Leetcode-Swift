//
//  130.swift
//  
//
//  Created by Sebastian on 9/2/24.
//

class Solution {
    var rows = 0
    var columns = 0
    func solve(_ board: inout [[Character]]) {
        rows = board.count
        guard rows > 0 else {
            return
        }
        columns = board[0].count
       
       
        for i in 0..<rows {
            dfs(board: &board, row: i, column: 0)
            dfs(board: &board, row: i, column: columns - 1)
        }
        if columns > 1 {
            for i in 1..<columns - 1 {
                dfs(board: &board, row: 0, column: i)
                dfs(board: &board, row: rows - 1, column: i)
            }
        }
       
        for i in 0..<rows {
            for j in 0..<columns {
                if board[i][j] == "A" {
                    board[i][j] = "O"
                } else if board[i][j] == "O" {
                    board[i][j] = "X"
                }
            }
        }
    }
    
    func dfs(board: inout [[Character]], row: Int, column: Int) {
        print("DFS called with row: \(row), column: \(column)")
        if row < 0 || row >= rows || column < 0 || column >= columns || board[row][column] != "O" {
            return
        }
        board[row][column] = "A"
        dfs(board: &board, row: row + 1, column: column)
        dfs(board: &board, row: row - 1, column: column)
        dfs(board: &board, row: row, column: column + 1)
        dfs(board: &board, row: row, column: column - 1)
    }
}
