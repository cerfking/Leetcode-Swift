//
//  1.swift
//  
//
//  Created by Sebastian on 8/15/24.
//

import Foundation
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int : Int]()
        for (index, value) in nums.enumerated() {
            if map[target - value] != nil {
                return [index, map[target - value]!]
            }
            map[value] = index
        }
        return [Int]()
    }
}
