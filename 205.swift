//
//  205.swift
//  
//
//  Created by Sebastian on 8/15/24.
//

import Foundation
class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var map1 = [Character : Character]()
        var map2 = [Character : Character]()
        let sChars = Array(s)
        let tChars = Array(t)
        if s.count != t.count {
            return false
        }
        for i in 0..<s.count {
            if map1[sChars[i]] == nil {
                map1[sChars[i]] = tChars[i]
            }
            if map2[tChars[i]] == nil {
                map2[tChars[i]] = sChars[i]
            }
            if (map1[sChars[i]] != tChars[i] || map2[tChars[i]] != sChars[i]) {
                return false
            }
            
        }
        return true
    }
}
