//
//  242.swift
//  
//
//  Created by Sebastian on 8/15/24.
//

import Foundation
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var record = [Int](repeating: 0, count: 26)
        for char in s.unicodeScalars {
            record[Int(char.value - "a".unicodeScalars.first!.value)] += 1
        }
        for char in t.unicodeScalars {
            record[Int(char.value - "a".unicodeScalars.first!.value)] -= 1
        }
        for r in record {
            if r != 0 {
                return false
            }
        }
        return true
    }
}
