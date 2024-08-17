//
//  383.swift
//  
//
//  Created by Sebastian on 8/14/24.
//

import Foundation
class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var record = [Int](repeating: 0, count: 26)
        for char in magazine.unicodeScalars {
            record[Int(char.value - "a".unicodeScalars.first!.value)] += 1
        }
        for char in ransomNote.unicodeScalars {
            record[Int(char.value - "a".unicodeScalars.first!.value)] -= 1
        }
        for r in record {
            if r < 0 {
                return false
            }
        }
        return true
    }
}
