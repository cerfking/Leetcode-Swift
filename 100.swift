//
//  100.swift
//  
//
//  Created by Sebastian on 8/22/24.
//

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p != nil && q == nil {
            return false
        } else if p == nil && q != nil {
            return false
        } else if p == nil && q == nil {
            return true
        } else if p?.val != q?.val {
            return false
        } else {
            return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
        }
    }
}

