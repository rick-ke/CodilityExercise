import UIKit

func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    var tempA = A
    for i in 0..<A.count {
        tempA[(i+K) % A.count] = A[i]
    }
    return tempA
}

var input1 = [Int]()
var input2 = Int()

input1 = [3, 8, 9, 7, 6]
input2 = 3
solution(&input1, input2)
// [9, 7, 6, 3, 8]

input1 = [0, 0, 0]
input2 = 1
solution(&input1, input2)
// [0, 0, 0]

input1 = [1, 2, 3, 4]
input2 = 4
solution(&input1, input2)
// [1, 2, 3, 4]
