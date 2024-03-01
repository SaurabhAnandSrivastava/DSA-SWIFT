# Deque

A deque, short for double-ended queue, is a data structure that allows elements to be added or removed from both ends. It combines the functionality of both a stack and a queue, enabling efficient insertion and deletion operations at the front and back of the deque.




```swift
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

```

This uses an array internally. Enqueuing and dequeuing are simply a matter of adding and removing items from the front or back of the array.

Init the Deque

```swift
var deque = Deque<String>()
```


Deque supports the following operations:

1: Insertion at Front and Back: Elements can be inserted at both the front and the back of the deque.



From Back 

```swift
deque.backPushPush(item: "item 1")
```
now deque will contain ["item 1"]

From Front 

```swift
deque.frontPush(item: "item 2")
deque.frontPush(item: "item 3")
deque.frontPush(item: "item 4")
```
now deque will contain ["item4,item3,item 2 ,item 1"]

2: Deletion from Front and Back: Elements can be removed from both the front and the back of the deque.

From Back 

```swift
deque.popBack()
```
now deque will contain ["item4,item3,item 2"]

From Front 

```swift
deque.popFront()
```
now deque will contain ["item3,item 2"]

3: Accessing Front and Back: Elements at the front and the back of the deque can be accessed without removing them.

Get front 

```swift
print(deque.getFront() as Any)
//Out put = item3
```

Get back 

```swift
print(deque.getBack() as Any)
//Out put = item2
```



