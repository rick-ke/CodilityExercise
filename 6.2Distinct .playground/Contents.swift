import UIKit

func solution(_ A : inout [Int]) -> Int {
    if A.isEmpty {
        return 0
    }
    var count = 1
    var sortA = A.sorted()
    for i in 0..<sortA.count-1 {
        if sortA[i] != sortA[i+1] {
            count += 1
        }
    }
    return count
}

var input = [Int]()

input = [2, 1, 1, 2, 3, 1]
solution(&input)
// 3

input = []
solution(&input)
// 0
