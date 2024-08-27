//
//  222.swift
//  
//
//  Created by Sebastian on 8/26/24.
//

class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return 1 + countNodes(root.left) + countNodes(root.right)
    }
    
    
}


