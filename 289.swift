//
//  289.swift
//  
//
//  Created by Sebastian on 8/29/24.
//

class Solution {
    func gameOfLife(_ board: inout [[Int]]) {
        let directions = [0,-1,1]
        let rows = board.count
        let columns = board[0].count
        var boardCopy = [[Int]](repeating: [Int](repeating: 0, count: columns), count: rows)
        for row in 0..<rows {
            for column in 0..<columns {
                boardCopy[row][column] = board[row][column]
            }
        }
        for row in 0..<rows {
            for column in 0..<columns {
                var liveNeighbors = 0
                for i in 0..<3 {
                    for j in 0..<3 {
                        if !(directions[i] == 0 && directions[j] == 0) {
                            let r = row + directions[i]
                            let c = column + directions[j]
                            if (c >= 0 && c < columns) && (r >= 0 && r < rows) && boardCopy[r][c] == 1 {
                                liveNeighbors += 1
                            }
                        }
                    }
                }
                if boardCopy[row][column] == 1 && (liveNeighbors < 2 || liveNeighbors > 3) {
                    board[row][column] = 0
                }
                if boardCopy[row][column] == 0 && liveNeighbors == 3 {
                    board[row][column] = 1
                }
            }
        }
    }
}
