//
//  106.swift
//  
//
//  Created by Sebastian on 8/23/24.
//

class Solution {
    var hashMap = [Int : Int]()
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        for (index, value) in inorder.enumerated() {
            hashMap[value] = index
        }
        return helper(inorder: inorder, inBegin: 0, inEnd: inorder.count, postorder: postorder, postBegin: 0, postEnd: postorder.count)
    }
    
    func helper(inorder: [Int], inBegin: Int, inEnd: Int, postorder: [Int], postBegin: Int, postEnd: Int) -> TreeNode? {
        if inBegin >= inEnd || postBegin >= postEnd {
            return nil
        }
        var root = TreeNode(postorder[postEnd - 1])
        guard let index = hashMap[postorder[postEnd - 1]] else {
            return nil
        }
        let leftLength = index - inBegin
        root.left = helper(inorder: inorder, inBegin: inBegin, inEnd: index, postorder: postorder, postBegin: postBegin, postEnd: postBegin + leftLength)
        root.right = helper(inorder: inorder, inBegin: index + 1, inEnd: inEnd, postorder: postorder, postBegin: postBegin + leftLength, postEnd: postEnd - 1)
        return root
        
    }
}

