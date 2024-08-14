//
//  11.swift
//  
//
//  Created by Sebastian on 8/13/24.
//

import Foundation
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var volume = Int.min
        var left = 0
        var right = height.count - 1
        while (left < right) {
            let minHeight = min(height[left], height[right])
            volume = max(volume, minHeight * (right - left))
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return volume
    }
}
