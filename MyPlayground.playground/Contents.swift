import UIKit

var aMthd:(_ Str1:inout String,_ str2:String)->Int = {
    (str1,str2) in {
        str1 = str1 + str2
        return str1.count
    }()
}

var a = "10"
var b = "5"
print(aMthd(:&a,"5"))
