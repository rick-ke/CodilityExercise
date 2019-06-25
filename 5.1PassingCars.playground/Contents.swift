import UIKit

func solution(_ A : inout [Int]) -> Int {
    var eastCarCount = 0
    var passCarResult = 0
    for n in A {
        if n == 0 {
            eastCarCount += 1
        } else {
            passCarResult += eastCarCount
        }
    }
    
    if passCarResult > 1000000000 {
        return -1
    }
    
    return passCarResult
}

var input = [Int]()

input = [0, 1, 0, 1, 1]
solution(&input)
// 5

