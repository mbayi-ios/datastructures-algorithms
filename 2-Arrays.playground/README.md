## What are Arrays
 - The humble Array.
    - What goes on behind the scene.
    - What happens if an array exceeds its capacity and gets too big

    Most commonly used Data Structures
   Collection of elements all of the same type that can be set and retrieved by their indices
    
 

 get(i) set(i, value) insert(i, value) delete(i)

### Three things about arrays 
- Arrays can contain anything
    ```
    let ints = [Int]()
    let strings = [String]()
    let people =[Person]()
    ```
- Arryas are of a fixed size
    - You dont see it in swift..
- Arrays support random access
   - Have abilidyt to access data
     ```
     get(4)
     set(5, "b")
     ```
     - This works with a constant time 0(1)


## How Arrays Work
### 1. Get/Set 
| "a" | "b" | "c" | |
- Get element at a particular index / If you know the index of the element
- get(4)  -> data[4] -> "a"
- set(5, "b") -> data[5] -> "b"

- This takes constant time 0(1)


### 2. Insert
 - When inserting an element into the array we are copying up, inserting and incrementing 
 - the order of linear time O(n) - worst case scenario
### 3. Delete 
 - When deleting, - takes linear time O(n)

### 4. Growing the size of an array 
- what happens when array is not big enough?
- Creates the size of the array x2(double the size)
- Copy all the exisiting elements
- add final element


## What's Different about swift? 
```
var array = ["a", "b", "c"]
array.insert("b", at:1)
array.remove(at: 1)
```
 - All this heavy lifting is done for you

