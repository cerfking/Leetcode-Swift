//
//  49.swift
//  
//
//  Created by Sebastian on 8/15/24.
//

import Foundation
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [[String]]()
        var map = [String : [String]]()
        for str in strs {
            let sorted  = String(str.sorted())
            if map[sorted] == nil {
                map[sorted] = [String]()
                map[sorted]!.append(str)
            } else {
                map[sorted]!.append(str)
            }
        }
        return Array(map.values)
    }
}
