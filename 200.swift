//
//  200.swift
//  
//
//  Created by Sebastian on 8/27/24.
//
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var count = 0
        var grid = grid
        for row in 0..<grid.count {
            for column in 0..<grid[0].count {
                if grid[row][column] == "1" {
                    count += 1
                    traversal(grid: &grid, row: row, column: column)
                }
            }
        }
        return count
    }
    
    func traversal(grid: inout [[Character]], row: Int, column: Int) {
        if row < 0 || row >= grid.count || column < 0 || column >= grid[0].count || grid[row][column] == "0" {
            return
        }
        grid[row][column] = "0"
        traversal(grid: &grid, row: row + 1, column: column)
        traversal(grid: &grid, row: row - 1, column: column)
        traversal(grid: &grid, row: row, column: column - 1)
        traversal(grid: &grid, row: row, column: column + 1)
    }
}
