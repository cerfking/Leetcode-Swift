//
//  138.swift
//  
//
//  Created by Sebastian on 8/21/24.
//

import Foundation

public class Node {
  public var val: Int
  public var next: Node?
  public var random: Node?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
    self.random = nil
  }
}
extension Node: Hashable, Equatable {
  public func hash(into hasher: inout Hasher) {
   
    hasher.combine(val)
    hasher.combine(ObjectIdentifier(self))
  }
  public static func ==(lhs: Node, rhs: Node) -> Bool {
    return lhs === rhs
  }
}



class Solution {
    var cachedNodes = [Node : Node]()
    func copyRandomList(_ head: Node?) -> Node? {
       
        guard let head = head else {
            return nil
        }
        if cachedNodes[head] == nil {
            var newHead = Node(head.val)
            cachedNodes[head] = newHead
            newHead.next = copyRandomList(head.next)
            newHead.random = copyRandomList(head.random)
        }
        return cachedNodes[head]
    }
}

