import UIKit

func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var isLeaves = Array(repeating: false, count: X)
    isLeaves.insert(true, at: 0)
    var leavesCount = 0
    for i in 0..<A.count {
        if !isLeaves[A[i]] {
            isLeaves[A[i]] = true
            leavesCount += 1
        }
        if leavesCount == X {
            return i
        }
    }
    return -1
}

var input1 = Int()
var input2 = [Int]()

input1 = 5
input2 = [1, 3, 1, 4, 2, 3, 5, 4]
solution(input1, &input2)
// 6
