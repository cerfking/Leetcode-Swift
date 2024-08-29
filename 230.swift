//
//  230.swift
//  
//
//  Created by Sebastian on 8/27/24.
//

class Solution {
    var count = 0
    var result = 0
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        traversal(root: root, k: k)
        return result
    }
    
    func traversal(root: TreeNode?, k: Int) {
        guard let root = root else {
            return
        }
        traversal(root: root.left, k: k)
        count += 1
        if count == k {
            result = root.val
        }
        traversal(root: root.right, k: k)
    }
    
}
