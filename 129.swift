//
//  129.swift
//  
//
//  Created by Sebastian on 8/24/24.
//

class Solution {
    var list = [Int]()
    var res = 0
    func sumNumbers(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return res
        }
        list.append(root.val)
        traversal(root: root)
        return res
    }
    
    func traversal(root: TreeNode) {
        if root.left == nil && root.right == nil {
            res += caluculate(list: list)
        }
        if let left = root.left {
            list.append(left.val)
            traversal(root: left)
            list.removeLast()
        }
        if let right = root.right {
            list.append(right.val)
            traversal(root: right)
            list.removeLast()
        }
    }
    
    func caluculate(list: [Int]) -> Int {
        var res = 0
        for element in list {
            res = res * 10 + element
        }
        return res
    }
}
