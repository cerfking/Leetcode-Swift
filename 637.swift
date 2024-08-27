//
//  637.swift
//  
//
//  Created by Sebastian on 8/26/24.
//

class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var res = [Double]()
        guard let root = root else {
            return res
        }
        var queue = [TreeNode]()
        queue.append(root)
        while(!queue.isEmpty) {
            var sum = 0
            let count = queue.count
            for i in 0..<count {
                let node = queue.removeFirst()
                sum += node.val
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.append(Double(sum) / Double(count))
        }
        return res
    }
}
