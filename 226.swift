//
//  226.swift
//  
//
//  Created by Sebastian on 8/22/24.
//
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        var queue = [TreeNode]()
        queue.append(root!)
        while !queue.isEmpty {
            var count = queue.count
            for i in 0..<count {
                var treeNode = queue.removeFirst()
                invert(treeNode)
                if treeNode.left != nil {
                    queue.append(treeNode.left!)
                }
                if treeNode.right != nil {
                    queue.append(treeNode.right!)
                }
            }
        }
        return root
    }
    
    func invert(_ root: TreeNode?) {
        var temp = root?.right
        root?.right = root?.left
        root?.left = temp
    }
}
