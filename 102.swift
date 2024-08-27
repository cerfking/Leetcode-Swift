//
//  102.swift
//  
//
//  Created by Sebastian on 8/26/24.
//
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else {
            return res
        }
        var queue = [TreeNode]()
        queue.append(root)
        while(!queue.isEmpty) {
            var path = [Int]()
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                path.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.append(path)
        }
        return res
    }
}
