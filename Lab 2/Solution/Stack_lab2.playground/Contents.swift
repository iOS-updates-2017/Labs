/*
  Stack

  A stack is like an array but with limited functionality. You can only push
  to add a new element to the top of the stack, pop to remove the element from
  the top, and peek at the top element without popping it off.

  A stack gives you a LIFO or last-in first-out order. The element you pushed
  last is the first one to come off with the next pop.

  Push and pop are O(1) operations.
*/

public struct Stack<T> {
  public var array = [T]()
  
  public var count: Int{
    return array.count
  }
  public var isEmpty: Bool{
    return array.count == 0
  }
  
  public mutating func push(element: T) {
    array.append(element)
  }
  
  public mutating func pop() -> T? {
    if (count == 0){
      return nil
    }
    let lastElement = array[count - 1]
    self.array.removeLast()
    return lastElement
  }
  
  public func peek() -> T? {
    if (count == 0){
      return nil
    }
    return array[count - 1]
  }
}

// Create a stack and put some elements on it already.
var stackOfNames = Stack(array: ["Carl", "Lisa", "Stephanie", "Jeff", "Wade"])

// Add an element to the top of the stack.
stackOfNames.push(element: "Mike")

// The stack is now ["Carl", "Lisa", "Stephanie", "Jeff", "Wade", "Mike"]
print(stackOfNames.array)

// Remove and return the first element from the stack. This returns "Mike".
stackOfNames.pop()

// Look at the first element from the stack.
// Returns "Wade" since "Mike" was popped on the previous line.
stackOfNames.peek()

// Check to see if the stack is empty.
// Returns "false" since the stack still has elements in it.
stackOfNames.isEmpty
