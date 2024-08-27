//
//  104.swift
//  
//
//  Created by Sebastian on 8/22/24.
//

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        var depth = 0
        if root == nil {
            return depth
        }
        var queue = [TreeNode]()
        queue.append(root!)
        while !queue.isEmpty {
            var count = queue.count
            depth += 1
            for i in 0..<count {
                let treeNode = queue.removeFirst()
                if treeNode.left != nil {
                    queue.append(treeNode.left!)
                }
                if treeNode.right != nil {
                    queue.append(treeNode.right!)
                }
            }
        }
        return depth
    }
}
