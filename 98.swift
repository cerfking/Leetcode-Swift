//
//  98.swift
//  
//
//  Created by Sebastian on 8/27/24.
//

class Solution {
    var pre: TreeNode? = nil
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        let left = isValidBST(root.left)
        if let pre = pre {
            if root.val <= pre.val {
                return false
            }
        }
        pre = root
        let right = isValidBST(root.right)
        return left && right
    }
}
