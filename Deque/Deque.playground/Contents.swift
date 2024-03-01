// Created by Saurabh Anand Srivastava ig: apps.artist

import UIKit

var greeting = "DEQUE"

struct Deque<T> {
    private var elements :[T] = []
    var isEmpty:Bool {
        return elements.isEmpty
    }
    var count:Int{
        return elements.count
    }
    
    mutating func frontPush(item:T){
        elements.insert(item, at: 0)
    }
    
    mutating func backPush(item:T){
        elements.append(item)
    }
    mutating func popFront() -> T?{
        return elements.removeFirst()
    }
    mutating func popBack() -> T?{
        return elements.removeLast()
    }
    mutating func getFront() -> T? {
        return elements.first
    }
    mutating func getBack() -> T?{
        return elements.last
    }
    
}

var deque = Deque<String>()
deque.frontPush(item: "item 1")
deque.backPush(item: "Item 2")
deque.frontPush(item: "Item 3")
var currentDQ = "current DQ \(deque)"
print(deque.getFront() as Any)
print(deque.getBack() as Any)



