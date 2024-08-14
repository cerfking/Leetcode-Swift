//
//  392.swift
//  
//
//  Created by Sebastian on 8/13/24.
//

import Foundation
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count == 0 {
            return true
        }
        var index = 0
        
        var sChars = Array(s)
        for char in t {
            if char == sChars[index] {
                index += 1
            }
            if index == s.count {
                return true
            }
        }
        return false
    }
}
