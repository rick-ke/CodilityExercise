import UIKit

func solution(_ A : inout [Int]) -> Int {
    if A.isEmpty {
        A.append(0)
    }
    let sortA = A.sorted()
    
    if sortA[0] != 1 {
        return 1
    }
    for i in 0..<sortA.count-1 {
        if sortA[i]+1 != sortA[i+1] {
            return sortA[i]+1
        }
    }
    return sortA[sortA.count-1]+1
}

var input1 = [Int]()

input1 = [2, 3, 1, 5]
solution(&input1)
// 4

input1 = []
solution(&input1)
// 1

input1 = [1]
solution(&input1)
// 2

input1 = [2]
solution(&input1)
// 1

input1 = [1, 2]
solution(&input1)
// 3

input1 = [3, 2]
solution(&input1)
// 1

