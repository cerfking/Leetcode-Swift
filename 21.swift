//
//  21.swift
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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
       
        var cur1 = list1
        var cur2 = list2
        var dummyHead = ListNode(-1)
        var cur = dummyHead
        while cur1 != nil && cur2 != nil {
            if cur1!.val <= cur2!.val {
                cur.next = cur1
                cur1 = cur1!.next
            } else {
                cur.next = cur2
                cur2 = cur2!.next
            }
            cur = cur.next!
        }
        if cur1 == nil {
            cur.next = cur2
        }
        if cur2 == nil {
            cur.next = cur1
        }
        return dummyHead.next
      
    }
}
