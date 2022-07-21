import UIKit

//Find Palidrame

//Reverse string
func reversed(str:String) ->Bool {
    let low = str.lowercased()
    return low.reversed() == Array(low)
}

//Build without reverse string method
func withoutReversed(str:String) ->Bool {
    let count = str.count
    var isPalidrame = false
    for i in 0..<count {
        let firstL  = str[str.index(str.startIndex, offsetBy:i)]
        let secondL = str[str.index(str.startIndex, offsetBy:count-1-i)]
        if firstL == secondL {
            isPalidrame = true
        }
    }
   return isPalidrame
}
//print("reversed  :\(reversed(str: "BADAB"))")
//print("withoutReversed  :\(withoutReversed(str: "BADAB"))")


//Integer Palidrome
func PalidromeInt(number:Int) -> Bool {
    var temp = number
    var result = 0
    while temp != 0 {
        result = (result * 10) + (temp % 10)
        print("result :\(result)")
        temp = temp/10
        print("temp :\(temp)")

    }
    return  number == result
}

print("Integer Palidrame :\(PalidromeInt(number: 121))")



