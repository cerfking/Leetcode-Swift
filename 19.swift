//
//  19.swift
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var dummyHead = ListNode(-1, head)
        var slow = dummyHead
        var fast = dummyHead
        for i in 0..<n {
            fast = fast.next!
        }
        while fast.next != nil {
            fast = fast.next!
            slow = slow.next!
        }
        slow.next = slow.next?.next
        return dummyHead.next
    }
}

