import UIKit

func solution(_ A : inout [Int]) -> Int {
    if A.isEmpty {
        return 0
    }
    
    let sortA = A.sorted()
    if sortA[0] != 1 {
        return 0
    }
    
    for i in 0..<sortA.count-1 {
        if sortA[i]+1 != sortA[i+1] {
            return 0
        }
    }
    return 1
}

var input = [Int]()

input = [4, 1, 3, 2]
solution(&input)
// 1

input = [4, 1, 3]
solution(&input)
// 0

input = [2]
solution(&input)
// 0

input = [1]
solution(&input)
// 1
