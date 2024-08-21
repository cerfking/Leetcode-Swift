//
//  71.swift
//  
//
//  Created by Sebastian on 8/20/24.
//

import Foundation
class Solution {
    func simplifyPath(_ path: String) -> String {
        var strings = path.split(separator: "/")
        var stack = [String]()
        for string in strings {
            if string == ".." {
                if !stack.isEmpty {
                    stack.popLast()
                }
                
            } else if string != "." && string.count > 0 {
                stack.append(String(string))
            }
        }
        var res = ""
        if stack.isEmpty {
            res.append("/")
        } else {
            while !stack.isEmpty {
                res.append("/")
                res.append(stack.removeFirst())
            }
        }
        return res
        
    }
}
