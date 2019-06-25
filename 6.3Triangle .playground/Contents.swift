import UIKit

func solution(_ A : inout [Int]) -> Int {
    if A.count < 3 {
        return 0
    }
    
    var sortA = A.sorted()
    for i in 2..<sortA.count {
        let AP = sortA[i-2]
        let AQ = sortA[i-1]
        let AR = sortA[i]
        let isTriangle = (AP + AQ > AR) && (AQ + AR > AP) && (AR + AP > AQ)
        if isTriangle {
            return 1
        }
    }
    return 0
}

var input = [Int]()

input = [10, 2, 5, 1, 8, 20]
solution(&input)
// 1

input = [10, 50, 5, 1]
solution(&input)
// 0

input = []
solution(&input)
// 0

input = [1, 1, 1, 1, 5, 5, 5]
solution(&input)
// 1

input = [5, 3, 3]
solution(&input)
// 1
