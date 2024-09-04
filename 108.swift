//
//  108.swift
//  
//
//  Created by Sebastian on 9/3/24.
//

import Foundation
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else {
            return nil
        }
        return traversal(nums: nums, left: 0, right: nums.count - 1)
    }
    
    func traversal(nums: [Int], left: Int, right: Int) -> TreeNode? {
        guard left <= right else {
            return nil
        }
        let mid = left + (right - left) / 2
        var treeNode = TreeNode(nums[mid])
        treeNode.left = traversal(nums: nums, left: left, right: mid - 1)
        treeNode.right = traversal(nums: nums, left: mid + 1, right: right)
        return treeNode
    }
}
