//
//  20.swift
//  
//
//  Created by Sebastian on 8/20/24.
//

import Foundation
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        for char in s {
            if char == "(" {
                stack.append(")")
            } else if char == "[" {
                stack.append("]")
            } else if char == "{" {
                stack.append("}")
            } else if !stack.isEmpty && stack.last! == char {
                stack.removeLast()
            } else {
                return false
            }
        }
        return stack.isEmpty
    }
}
