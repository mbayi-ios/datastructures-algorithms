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
    print("Finding nemo took: \(milliseconds)")
}

let nemo = Array<String>(repeating: "", count: 100000)
findNemo(nemo)
