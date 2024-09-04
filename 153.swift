//
//  153.swift
//  
//
//  Created by Sebastian on 9/3/24.
//

class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] <= nums[nums.count - 1] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return nums[left]
    }
}

