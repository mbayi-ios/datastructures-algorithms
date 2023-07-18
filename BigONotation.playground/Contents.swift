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


/// MARK: - 
