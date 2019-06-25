import UIKit

func solution(_ A : inout [Int]) -> Int {
    var leftSum = Int()
    var rightSum = Int()
    var minDiff = Int()

    let P = 1
    for i in 0..<P {
        leftSum += A[i]
    }
    for j in P..<A.count {
        rightSum += A[j]
    }
    minDiff = abs(leftSum - rightSum)
    
    for n in 1..<A.count-1 {
        leftSum += A[n]
        rightSum -= A[n]
        print(leftSum, rightSum)
        let absDiff = abs(leftSum - rightSum)
        minDiff = min(minDiff, absDiff)
    }
    return minDiff
}

var input1 = [Int]()

input1 = [3, 1, 2, 4, 3]
solution(&input1)
// 1


