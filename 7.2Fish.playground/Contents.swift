import UIKit

struct Fish {
    let size: Int
    let dir: Int
}

func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    var fishs = [Fish]()
    
    for i in 0..<B.count {
        let currSize = A[i]
        let currDir = B[i]
        if fishs.isEmpty {
            fishs.append(Fish(size: currSize, dir: currDir))
            continue
        }
        
        while !fishs.isEmpty && fishs.last!.dir > currDir && fishs.last!.size < currSize {
            fishs.removeLast()
        }
        if fishs.isEmpty {
            fishs.append(Fish(size: currSize, dir: currDir))
        } else {
            if fishs.last!.dir < currDir || fishs.last!.dir == currDir {
                fishs.append(Fish(size: currSize, dir: currDir))
            }
        }
    }
    return fishs.count
}

var input1 = [Int]()
var input2 = [Int]()

input1 = [4, 3, 2, 1, 5]
input2 = [0, 1, 0, 0, 0]
solution(&input1, &input2)
// 2

input1 = [0, 1]
input2 = [1, 1]
solution(&input1, &input2)
// 2

input1 = [4, 2, 3, 1, 5]
input2 = [0, 1, 1, 0, 0]
solution(&input1, &input2)
// 2
