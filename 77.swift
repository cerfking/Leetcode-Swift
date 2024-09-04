//
//  77.swift
//  
//
//  Created by Sebastian on 8/30/24.
//
class Solution {
    var path = [Int]()
    var res = [[Int]]()
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        backtracking(n: n, k: k, startIndex: 1)
        return res
    }
    
    func backtracking(n: Int, k: Int, startIndex: Int) {
        if path.count == k {
            res.append(path)
            return
        }
        for i in startIndex...n - (k - path.count) + 1 {
            path.append(i)
            backtracking(n: n, k: k, startIndex: i + 1)
            path.removeLast()
        }
    }
    
    
}
