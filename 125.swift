//
//  125.swift
//  
//
//  Created by Sebastian on 8/13/24.
//

import Foundation
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var string = ""
        for char in s.lowercased() {
            if (char >= "0" && char <= "9")||(char >= "a" && char <= "z") {
                string.append(char)
            }
        }
        var start = 0, end = string.count - 1
        var chars = Array(string)
        while(start <= end) {
            if chars[start] == chars[end] {
                start += 1
                end -= 1
            } else {
                return false
            }
        }
        return true
    }
}
