import UIKit

func solution(_ N : Int) -> Int {
    var tempN = N
    var binary = ""
    var maxGap = 0
    var countGap = 0
    var isGapStart = false
    
    while tempN > 0 {
        let rem = tempN % 2
        tempN = tempN / 2
        
        binary += "\(rem)"
        
        if rem == 1 {
            countGap = 0
            isGapStart = true
        } else {
            if isGapStart {
                countGap += 1
                maxGap = max(maxGap, countGap)
            }
        }
    }
    return maxGap
}

var input = Int()

input = 9
solution(input)  // 1001
// 2

input = 529
solution(input)  // 1000010001
// 4

input = 20
solution(input)  // 10100
// 1

input = 15
solution(input)  // 1111
// 0

input = 32
solution(input)  // 100000
// 0

input = 1041
solution(input)  // 10000010001
// 5
