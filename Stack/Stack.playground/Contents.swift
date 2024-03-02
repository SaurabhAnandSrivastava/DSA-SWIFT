import UIKit

var greeting = "Hello, Stack"

public struct Stack<T> {
    public var elements :[T] = []
    
    public var isEmpthy:Bool{
        return elements.isEmpty
    }
    
    public var count:Int {
        return elements.count
    }
    
    mutating func push(item:T){
        
        elements.append(item)
    }
    
    mutating func pop(){
        elements.removeLast()
    }
    
    mutating func getHead() -> T? {
        return elements.last
    }
    
}

var stack = Stack<Int>()
stack.push(item: 1)
stack.push(item: 2)
stack.push(item: 3)

print("stack is \(stack)")
stack.pop()


print("Head at \(stack.getHead()!)")

