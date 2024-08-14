//
//  15.swift
//  
//
//  Created by Sebastian on 8/13/24.
//

import Foundation
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var nums = nums.sorted()
        if nums[0] > 0 {
            return result
        }
        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            var left = i + 1
            var right = nums.count - 1
            while(left < right) {
                let sum = nums[i] + nums[left] + nums[right]
                if sum > 0 {
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    result.append([nums[i], nums[left], nums[right]])
                    while(left < right && nums[left + 1] == nums[left]) {
                        left += 1
                    }
                    while(left < right && nums[right - 1] == nums[right]) {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }
            }
          
        }
        return result
    }
}

Solution().threeSum([-1, 0, 1, 2, -1, -4])
