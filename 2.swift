//
//  2.swift
//  
//
//  Created by Sebastian on 8/21/24.
//

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {
            return l2
        }
        guard let l2 = l2 else {
            return l1
        }
        var listNode = ListNode((l1.val + l2.val) % 10)
        if l1.val + l2.val > 9 {
            listNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next), ListNode(1))
        } else {
            listNode.next = addTwoNumbers(l1.next, l2.next)
        }
        return listNode
        
    }
}
