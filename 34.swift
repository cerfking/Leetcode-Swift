//
//  34.swift
//  
//
//  Created by Sebastian on 9/3/24.
//

import Foundation
class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 0 else {
            return [-1, -1]
        }
        if binarySearch(nums: nums, target: target) == -1 {
            return [-1, -1]
        }
        let index = binarySearch(nums: nums, target: target)
        var left = index
        var right = index
        while left - 1 >= 0 && nums[left - 1] == nums[left] {
            left -= 1
        }
        while right + 1 < nums.count && nums[right + 1] == nums[right] {
            right += 1
        }
        return [left, right]
    }
    
    func binarySearch(nums: [Int], target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
}
