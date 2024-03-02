# Stack

A stack is a fundamental data structure in computer science that follows the Last In, First Out (LIFO) principle. It is similar to a stack of plates where you can only add or remove the top plate. In a stack data structure, elements are added and removed from the top of the stack.




```swift
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

```

Init the Stack

```swift
var stack = Stack<Int>()
```

## Key operations supported by a stack include:

1) Push: Adding an element to the top of the stack.

```swift
stack.push(item: 1)
stack.push(item: 2)
stack.push(item: 3)
//now stack has [1,2,3]
```



2) Pop: Removing the top element from the stack.

```swift
stack.pop()
//now stack has [1,2]
```
3) Peek: Viewing the top element of the stack without removing it.

```swift
print("Head at \(stack.getHead()!)")
//output 2
```

4) isEmpty: Checking if the stack is empty.

```swift
if(stack.isEmpty){
print("Stack is empty")
}
else {
print("Stack is not empty")
}

//output Stack is not empty
```

5) Count: Determining the number of elements in the stack.

```swift

print("Item count in stack \(stack.count)")



//output 2
```

Stacks are commonly used in many areas of computer science and software development, including:

Algorithm implementations: Stacks are used in various algorithms such as depth-first search (DFS), backtracking, and expression evaluation.

Function call management: Function call frames are typically managed using a stack in programming languages.

Memory management: Stack memory is used for storing local variables and function call information.

Parsing and syntax analysis: Stacks are used in parsing algorithms like recursive descent parsers.

Undo mechanisms: Stacks can be used to implement undo functionality in applications.

Overall, stacks provide a simple and efficient way to manage data where the order of access is important, and they are a fundamental building block of many algorithms and systems in computer science.



