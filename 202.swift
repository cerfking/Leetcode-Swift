//
//  202.swift
//  
//
//  Created by Sebastian on 8/15/24.
//

import Foundation
class Solution {
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var number = n
        while(number != 1 || !set.contains(number)) {
            set.insert(number)
            number = getNext(&number)
        }
        return number == 1
    }
    
    func getNext(_ n: inout Int) -> Int {
        var sum = 0
        while(n > 0) {
            var digit = n % 10
            sum += digit * digit
            n = n / 10
        }
        return sum
    }
}
