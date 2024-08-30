//
//  1123.swift
//  
//
//  Created by Sebastian on 8/29/24.
//

class Solution {
    var res: TreeNode?
    var maxDepth = -1
    func lcaDeepestLeaves(_ root: TreeNode?) -> TreeNode? {
        traversal(root: root, depth: 0)
        return res
    }
    
    func traversal(root: TreeNode?, depth: Int) -> Int {
        guard let root = root else {
            maxDepth = max(maxDepth, depth)
            return depth
        }
        let leftMaxDepth = traversal(root: root.left, depth: depth + 1)
        let rightMaxDepth = traversal(root: root.right, depth: depth + 1)
        if leftMaxDepth == rightMaxDepth && leftMaxDepth == maxDepth {
            res = root
        }
        return max(leftMaxDepth, rightMaxDepth)
    }
}

