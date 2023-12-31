import Foundation

func findNemo(_ arr: [String]) {
    let before = Date()
    
    for i in 0..<arr.count {
        if arr[i] == "nemo" {
            print("Found him!")
        }
    }
    
    let after = Date()
    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
    let milliseconds: Double = Double(component.nanosecond! / 1000000)
   // print("Finding nemo took: \(milliseconds)")
}
//let nemo = ["nemo"]
let nemo = Array<String>(repeating: "", count: 100000)
findNemo(nemo)


/// MARK:- Constant time 0(1)

func constantTime(_ n: Int) -> Int {
    let result = n * n
    return result
}

//print(constantTime(3))

/// MARK:- Linear Time O(n)

func linearTime(_ A: [Int]) -> Int {
    for i in 0..<A.count {
        if A[i] == 0 {
            return 0
        }
        print(i)
    }
    return 1
}

//linearTime([1, 2, 3])


/// MARK: - Logarithmic Time O(log n)

func logarithmicTime(_ N: Int) -> Int {
    var n = N
    var result = 0
    while n > 1 {
        n /= 2
        
        //print(n)
        result += 1
    }
    
    return result
}

logarithmicTime(128)

/// MARK: - Quadratic time O(n^2)
func quadratic(_ n: Int) -> Int {
    var result = 0
    
    for i in 0..<n {
        for j in i..<n {
            result += 1
            print("\(i) \(j)")
        }
    }
    return result
}

//quadratic(16)


/*
 QUESTION 1:
 Given two arrays, create a function that let's a user know where these two arrays contain any common items
 
 
 */

//SOLUTION 1:  Naive Brute Force

func commonItemsInArray(_ A: [Int], _ B: [Int]) -> Bool {
    //let before = Date()
    
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
    
//    let after = Date()
//    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
//    let milliseconds: Double = Double(component.nanosecond! / 1000000)
//
//    print("bruteforce takes", milliseconds)
}

commonItemsInArray([1, 2, 3], [5, 4, 6])
commonItemsInArray([1,2,4,5], [1,3,5,6])

/* notes on the above bruteforce method.
  - It is quadratic in nature O(n^2) because we have nested loops - Quadradic are slower. We can do better
 */


// SOLUTION 2: Using Hash Map

func commonItemsInArrayHashMap(_ A: [Int], _ B: [Int]) -> Bool {
    var hasA = [Int: Bool]()
    
    // stil looping __ but not nested - O(2n) vs O(n^2)
    for a in A { // O(n)
        hasA[a] = true
    }
    
    // now lookup in the hash to see if elements of B exist
    for b in B {
        if hasA[b] == true {
            return true
        }
    }
    
    return false
}

commonItemsInArrayHashMap([1, 3, 4], [10, 35, 5])

/*Trading Off Time for Space
 
    - Brute Force Time Complexity is O(n^2) and space complexity is O(1) - ie. we are not creating any more memory
    - Hash Map Time Complexity is O(n) and space complexity is O(n) since we are creating new memory to hold the array
 
 CONCLUSION
  - Bruteforce is very space efficient however very slow.
  - For Hash Map we are trading off space by creating extra data structure(memory)  but we get big improvement in terms of performance.
  - Trading off Space for Time ;- important concept in interviews. MAKING Hash Table Go to
 */



/*test
 find out if two arrays have elements in common
 
 A[] & B[] if there is a common element, return true else return false
 */

// using bruteforce method
func commonElementsInArrayBruteForce(_ A:[Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
}


commonElementsInArrayBruteForce([1,2,4], [1,3,4])

// using hashmap

func commonHash(_ A: [Int], _ B: [Int]) -> Bool {
    var hasA = [Int: Bool]()
    
    for i in A {
        hasA[i] = true
    }
    
    for j in B {
        if hasA[j] == true {
            return true
        }
    }
    
    return false
}

commonHash([1,2, 4], [3,1, 5,6])
