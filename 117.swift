//
//  117.swift
//  
//
//  Created by Sebastian on 8/23/24.
//


class Solution {
    func connect(_ root: Node?) -> Node? {
        if root == nil {
            return root
        }
        var queue = [Node]()
        queue.append(root!)
        while !queue.isEmpty {
            var count = queue.count
            for i in 0..<count {
                let node = queue.removeFirst()
                if i != count - 1 {
                    node.next = queue.first
                } else {
                    node.next = nil
                }
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        return root
    }
}
