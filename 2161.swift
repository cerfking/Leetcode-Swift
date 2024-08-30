//
//  2161.swift
//  
//
//  Created by Sebastian on 8/30/24.
//

class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var res = [Int](repeating: pivot, count: nums.count)
        for num in nums {
            if num < pivot {
                res[left] = num
                left += 1
            }
            else if num > pivot {
                res[right] = num
                right -= 1
            }
        }
        var x = right + 1
        var y = nums.count - 1
        while x < y {
            res.swapAt(x, y)
            x += 1
            y -= 1
        }
        return res
    }
}
