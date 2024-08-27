//
//  86.swift
//  
//
//  Created by Sebastian on 8/22/24.
//


class Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        var dummyHead1 = ListNode(-1)
        var dummyHead2 = ListNode(-1)
        var cur1 = dummyHead1
        var cur2 = dummyHead2
        var node = head
        while node != nil {
            if node!.val < x {
                cur1.next = node
                cur1 = cur1.next!
            } else {
                cur2.next = node
                cur2 = cur2.next!
            }
            node = node?.next
        }
        cur1.next = dummyHead2.next
        cur2.next = nil
        return dummyHead1.next
    }
}
