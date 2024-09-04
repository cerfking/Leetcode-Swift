//
//  207.swift
//  
//
//  Created by Sebastian on 9/3/24.
//

import Foundation
class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var inDegree = [Int](repeating: 0, count: numCourses)
        var hashMap = [Int : [Int]]()
        for prerequisite in prerequisites {
            inDegree[prerequisite[0]] += 1
            if hashMap[prerequisite[1]] != nil {
                var list = hashMap[prerequisite[1]]
                list?.append(prerequisite[0])
                hashMap[prerequisite[1]] = list
            } else {
                var list = [Int]()
                list.append(prerequisite[0])
                hashMap[prerequisite[1]] = list
            }

        }
        var queue = [Int]()
        var count = 0
        for i in 0..<inDegree.count {
            if inDegree[i] == 0 {
                queue.append(i)
            }
        }
        while !queue.isEmpty {
            let selected = queue.removeFirst()
            count += 1
            if let list = hashMap[selected] {
                for course in list {
                    inDegree[course] -= 1
                    if inDegree[course] == 0 {
                        queue.append(course)
                    }
                }
            }
        }
        return count == numCourses
       
        
    }
}
