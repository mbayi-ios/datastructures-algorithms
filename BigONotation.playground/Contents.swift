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

// Naive Brute Force

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
