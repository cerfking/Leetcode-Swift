//
//  173.swift
//  
//
//  Created by Sebastian on 8/24/24.
//


class BSTIterator {
    var stack = [TreeNode]()

    init(_ root: TreeNode?) {
        var node = root
        while(node != nil) {
            stack.append(node!)
            node = node!.left
        }
    }
    
    func next() -> Int {
        var node = stack.removeLast()
        if node.right != nil {
            var cur: TreeNode? = node.right
            while(cur != nil) {
                stack.append(cur!)
                cur = cur!.left
            }
        }
        return node.val
    }
    
    func hasNext() -> Bool {
        return !stack.isEmpty
    }
}

