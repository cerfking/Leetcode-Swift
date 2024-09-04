//
//  17.swift
//  
//
//  Created by Sebastian on 8/30/24.
//

class Solution {
    var res = [String]()
    let numStrings = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    func letterCombinations(_ digits: String) -> [String] {
        res.removeAll()
        backtracking(digits: digits, index: 0)
        return res
    }
    var temp: String = ""
    func backtracking(digits: String, index: Int) {
        if index == digits.count {
            if temp.count == 0 {
                return
            }
            res.append(temp)
            return
        }
        let digitsChars = Array(digits)
       
        let string = numStrings[digitsChars[index].wholeNumberValue!]
        let stringChars = Array(string)
        for i in 0..<string.count {
            temp.append(stringChars[i])
            backtracking(digits: digits, index: index + 1)
            temp.removeLast()
        }
    }
    
}
