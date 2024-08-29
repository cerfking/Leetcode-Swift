//
//  36.swift
//  
//
//  Created by Sebastian on 8/28/24.
//

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowsRecord = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 9)
        var columsRecord = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 9)
        var areaRecord = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 9)
        let base = "0".unicodeScalars.first!.value
        for i in 0..<9 {
            for j in 0..<9 {
                 
                let char = board[i][j]
                if char == "." {
                    continue
                }
                if rowsRecord[i][Int(char.unicodeScalars.first!.value - base)] == true {
                    return false
                } else {
                    rowsRecord[i][Int(char.unicodeScalars.first!.value - base)] = true
                }
                if columsRecord[j][Int(char.unicodeScalars.first!.value - base)] == true {
                    return false
                } else {
                    columsRecord[j][Int(char.unicodeScalars.first!.value - base)] = true
                }
                if areaRecord[i / 3 * 3 + j / 3][Int(char.unicodeScalars.first!.value - base)] == true {
                    return false
                } else {
                    areaRecord[i / 3 * 3 + j / 3][Int(char.unicodeScalars.first!.value - base)] = true
                }
                
            }
        }
        return true
    }
}
