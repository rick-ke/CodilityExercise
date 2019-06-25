import UIKit

func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let baseCount = (Y - X) / D
    return ((Y - X) % D == 0) ? baseCount : baseCount+1
}

var input1 = Int()
var input2 = Int()
var input3 = Int()

input1 = 10
input2 = 85
input3 = 30
solution(input1, input2, input3)
// 3

input1 = 3
input2 = 999111321
input3 = 7
solution(input1, input2, input3)
//
