//
//  105.swift
//  
//
//  Created by Sebastian on 8/22/24.
//

class Solution {
    var hashMap = [Int : Int]()
    
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        for (index, value) in inorder.enumerated() {
            hashMap[value] = index
        }
        return helper(preorder: preorder, preBeign: 0, preEnd: preorder.count, inorder: inorder, inBegin: 0, inEnd: inorder.count)
    }
    
    func helper(preorder: [Int], preBeign: Int, preEnd: Int, inorder: [Int], inBegin: Int, inEnd: Int) -> TreeNode? {
        if preBeign >= preEnd || inBegin >= inEnd {
            return nil
        }
        var root = TreeNode(preorder[preBeign])
        guard let index = hashMap[preorder[preBeign]] else {
            return nil
        }
        let leftLength = index - inBegin
        root.left = helper(preorder: preorder, preBeign: preBeign + 1, preEnd: preBeign + 1 + leftLength, inorder: inorder, inBegin: inBegin, inEnd: index)
        root.right = helper(preorder: preorder, preBeign: preBeign + 1 + leftLength, preEnd: preEnd, inorder: inorder, inBegin: index + 1, inEnd: inEnd)
        return root
    }
}
