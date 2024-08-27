//
//  236.swift
//  
//
//  Created by Sebastian on 8/26/24.
//
class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return root
        }
        if root.val == p?.val || root.val == q?.val {
            return root
        }
        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)
        if left == nil && right != nil {
            return right
        } else if left != nil && right == nil {
            return left
        } else if left != nil && right != nil {
            return root
        } else {
            return nil
        }
    }
}
