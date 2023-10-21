
// Omar Adel
// iOS Developer
// omar.adel888@hotmail.com

public func solution(_ N: Int, _ A: inout [Int]) -> [Int] {
    var counters = Array(repeating: 0, count: N)
    var maximumCounter = 0
    var lastCounterMax = 0

    for value in A {
        if value <= N {
            let index = value - 1
            counters[index] += 1
            maximumCounter = max(maximumCounter, counters[index])
        } else {
            counters = Array(repeating: maximumCounter, count: N)
            lastCounterMax = maximumCounter
        }
    }
    
    for i in 0..<N {
        counters[i] = max(counters[i], lastCounterMax)
    }
    
    return counters
}
