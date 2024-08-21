//
//  155.swift
//  
//
//  Created by Sebastian on 8/20/24.
//

import Foundation

class MinStack {
    var stack: [Int]
    var minStack: [Int]

    init() {
        self.stack = [Int]()
        self.minStack = [Int]()
        self.minStack.append(Int.max)
    }
    
    func push(_ val: Int) {
        stack.append(val)
        minStack.append(min(minStack.last!, val))
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
