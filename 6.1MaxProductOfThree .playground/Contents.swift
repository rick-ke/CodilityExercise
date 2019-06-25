import UIKit

func solution(_ A : inout [Int]) -> Int {
    var maxVal = Int.min
    let sortA = A.sorted()
    if sortA[0] < 0 && sortA[1] < 0 {
        maxVal = max(maxVal, sortA[0] * sortA[1] * sortA[A.count-1])
    }
    maxVal = max(maxVal, sortA[A.count-3] * sortA[A.count-2] * sortA[A.count-1])
    return maxVal
}

var input = [Int]()

input = [-3, 1, 2, -2, 5, 6]
solution(&input)
// 60

input = [-5, 5, -5, 4]
solution(&input)
// 125
