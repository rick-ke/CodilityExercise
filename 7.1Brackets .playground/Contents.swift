import UIKit

func solution(_ S : inout String) -> Int {
    var stack = ""
    for str in S {
        if str == "{" || str == "[" || str == "(" {
            stack.append(str)
        }
        if (str == "}" && stack.popLast() != "{") ||
            (str == "]" && stack.popLast() != "[") ||
            (str == ")" && stack.popLast() != "(") {
            return 0
        }
    }
    if stack == "" {
        return 1
    }
    return 0
}

var input = String()

input = "{[()()]}"
solution(&input)
// 1

input = "([)()]"
solution(&input)
// 0
