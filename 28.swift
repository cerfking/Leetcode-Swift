//
//  28.swift
//  
//
//  Created by Sebastian on 8/13/24.
//

import Foundation
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var next: [Int] = [Int](repeating: -1, count: needle.count)
        var j = -1
        getNext(needle, &next)
        for i in 0..<haystack.count {
            while(j >= 0 && Array(needle)[j + 1] != Array(haystack)[i]) {
                j = next[j]
            }
            if(Array(needle)[j + 1] == Array(haystack)[i]) {
                j += 1
            }
            if (j == needle.count - 1) {
                return i - needle.count + 1
            }
        }
        return -1
        
    }
    
    func getNext(_ needle: String, _ next: inout [Int]) {
        var j = -1
        next[0] = j
        for i in 1..<needle.count {
            while(j >= 0 && Array(needle)[i] != Array(needle)[j + 1]) {
                j = next[j]
            }
            if(Array(needle)[i] == Array(needle)[j + 1]) {
                j += 1
            }
            next[i] = j
        }
    }
}
