
// Omar Adel
// iOS Developer
// omar.adel888@hotmail.com

public func solution(_ N: Int, _ A: [Int]) -> [Int] {
    var counters = Array(repeating: 0, count: N)
    var maximumCounter = 0
    var lastCounterMax = 0
    
    for operation in A {
        if 1 <= operation, operation <= N {
            let index = operation - 1
            counters[index] = max(counters[index], maximumCounter) + 1
            maximumCounter = max(maximumCounter, counters[index])
        } else if operation == N + 1 {
            lastCounterMax = maximumCounter
        }
    }
    
    for i in 0..<N {
        counters[i] = max(counters[i], lastCounterMax)
    }
    
    return counters
}
