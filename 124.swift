//
//  124.swift
//  
//
//  Created by Sebastian on 8/24/24.
//

class Solution {
    var maxSum = Int.min
    func maxPathSum(_ root: TreeNode?) -> Int {
        gainMax(root: root)
        return maxSum
    }
    
    func gainMax(root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let leftGain = max(0, gainMax(root: root.left))
        let rightGain = max(0, gainMax(root: root.right))
        maxSum = max(maxSum, root.val + leftGain + rightGain)
        return root.val + max(leftGain, rightGain)
    }
}

