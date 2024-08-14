//
//  6.swift
//  
//
//  Created by Sebastian on 8/13/24.
//

import Foundation
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if (numRows < 2) {
            return s
        }
        var result: [String] = [String](repeating: "", count: numRows)
        var flag = -1
        var sChars = Array(s)
        var i = 0
        for char in sChars {
            result[i].append(char)
            if (i == 0 || i == numRows - 1) {
                flag = -flag
            }
            i += flag
        }
        var ans = ""
        for res in result {
            ans.append(res)
        }
        return ans
        
    }
}
