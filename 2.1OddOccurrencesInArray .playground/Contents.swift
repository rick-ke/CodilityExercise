import UIKit

func solution(_ A : inout [Int]) -> Int {
    let sortA = A.sorted()
    
    var container = [Int]()
    for num in sortA {
        if container.last == num {
            container.removeLast()
        } else {
            container.append(num)
        }
    }
    return container[0]
}

var input = [Int]()

input = [9, 3, 9, 3, 9, 7, 9]
solution(&input)
// 7

input = [42]
solution(&input)
// 42
