
// Omar Adel
// iOS Developer
// omar.adel888@hotmail.com

public func solution(_ A: inout [Int]) -> Int {
    A = A.sorted()
    var left = 0
    var right = A.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        
        if A[mid] != mid + 1 {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return left + 1
}
