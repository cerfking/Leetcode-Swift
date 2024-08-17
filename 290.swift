//
//  290.swift
//  
//
//  Created by Sebastian on 8/15/24.
//

import Foundation
class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var map = [Character : String]()
        var splited = s.split(separator: " ")
        if pattern.count != splited.count {
            return false
        }
        let patternChars = Array(pattern)
        for i in 0..<pattern.count {
            if map[patternChars[i]] != nil {
                if map[patternChars[i]] != String(splited[i]) {
                    return false
                }
            } else {
                if map.values.contains(String(splited[i])) {
                    return false
                }
                map[patternChars[i]] = String(splited[i])
            }
        }
        return true
        
    }
}
