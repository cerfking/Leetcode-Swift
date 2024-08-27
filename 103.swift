//
//  103.swift
//  
//
//  Created by Sebastian on 8/26/24.
//

class Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        var flag = 0
        var res = [[Int]]()
        guard let root = root else {
            return res
        }
        var queue = [TreeNode]()
        queue.append(root)
        while(!queue.isEmpty) {
            let count = queue.count
            var path = [Int]()
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
            if flag % 2 == 0 {
                res.append(path)
            } else {
                res.append(path.reversed())
            }
            flag += 1
        }
        return res
    }
}
