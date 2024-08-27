//
//  82.swift
//  
//
//  Created by Sebastian on 8/21/24.
//


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var dummyHead = ListNode(-1, head)
        var cur = dummyHead
        while cur.next != nil && cur.next?.next != nil {
            if cur.next?.val == cur.next?.next?.val {
                let x = cur.next?.val
                while cur.next != nil && cur.next?.val == x {
                    cur.next = cur.next?.next
                }
                
            } else {
                cur = cur.next!
            }
        }
        return dummyHead.next
    }
}
