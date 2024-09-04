//
//  46.swift
//  
//
//  Created by Sebastian on 8/30/24.
//

class Solution {
    var path = [Int]()
    var res = [[Int]]()
    var used = [Bool]()
    func permute(_ nums: [Int]) -> [[Int]] {
        used = [Bool](repeating: false, count: nums.count)
        if nums.count == 0 {
            return res
        }
        backtracking(nums: nums)
        return res
    }
    
    func backtracking(nums: [Int]) {
        if path.count == nums.count {
            res.append(path)
            return
        }
        for i in 0..<nums.count {
            if used[i] {
                continue
            }
            used[i] = true
            path.append(nums[i])
            backtracking(nums: nums)
            path.removeLast()
            used[i] = false
        }
        
    }
}
