//
//  219.swift
//  
//
//  Created by Sebastian on 8/16/24.
//

import Foundation
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var map = [Int : Int]()
        for (index, num) in nums.enumerated() {
            if map[num] != nil && abs(map[num]! - index) <= k{
                return true
            }
            map[num] = index
            
        }
        return false
    }
}
