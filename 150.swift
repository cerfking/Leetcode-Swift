//
//  150.swift
//  
//
//  Created by Sebastian on 8/20/24.
//

import Foundation
class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        for token in tokens {
            if token == "+" {
                let b = stack.popLast()!
                let a = stack.popLast()!
                stack.append(a + b)
            } else if token == "-" {
                let b = stack.popLast()!
                let a = stack.popLast()!
                stack.append(a - b)
            } else if token == "*" {
                let b = stack.popLast()!
                let a = stack.popLast()!
                stack.append(a * b)
            } else if token == "/" {
                let b = stack.popLast()!
                let a = stack.popLast()!
                stack.append(a / b)
            } else {
                stack.append(Int(token)!)
            }
        }
        return stack.last!
    }
}
