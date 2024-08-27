//
//  101.swift
//  
//
//  Created by Sebastian on 8/22/24.
//

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return _isSymmetric(root?.left, root?.right)
    }
    
    func _isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left != nil && right == nil {
            return false
        } else if left == nil && right != nil {
            return false
        } else if left == nil && right == nil {
            return true
        } else if left?.val != right?.val {
            return false
        } else {
            return _isSymmetric(left?.left, right?.right) && _isSymmetric(left?.right, right?.left)
        }
    }
}
