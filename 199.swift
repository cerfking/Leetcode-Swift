//
//  199.swift
//  
//
//  Created by Sebastian on 8/26/24.
//

class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else {
            return res
        }
        var queue = [TreeNode]()
        queue.append(root)
        while(!queue.isEmpty) {
            let count = queue.count
            for i in 0..<count {
                let node = queue.removeFirst()
                if i == count - 1 {
                    res.append(node.val)
                }
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        return res
    }
}
