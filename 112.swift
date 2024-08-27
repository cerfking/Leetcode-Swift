//
//  112.swift
//  
//
//  Created by Sebastian on 8/23/24.
//

class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        var sum = targetSum
        guard let root = root else {
            return false
        }
        sum -= root.val
        if root.left == nil && root.right == nil {
            return sum == 0
        }
        if let left = root.left {
            if hasPathSum(left, sum) {
                return true
            }
            
        }
        if let right = root.right {
            if hasPathSum(right, sum) {
                return true
            }
        }
        return false
    }
}
