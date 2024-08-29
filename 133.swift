//
//  133.swift
//  
//
//  Created by Sebastian on 8/29/24.
//

class Solution {
    var hashMap = [Int : Node]()
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else {
            return nil
        }
        if let _ = hashMap[node.val] {
            return hashMap[node.val]
        }
        var newNode = Node(node.val)
        hashMap[node.val] = newNode
        for neighbor in node.neighbors {
            newNode.neighbors.append(cloneGraph(neighbor))
        }
        return newNode
        
    }
}
