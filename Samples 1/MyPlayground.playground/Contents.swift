import UIKit
//Variables
var a = 10
var b = 20

print("A is \(a)")
print("B is \(b)")

var c = a
a = b
b = c

//print("A is \(a)")
//print("B is \(b)")


var index = 0

//compute
var iList = [1,2,3,4,5,6]

var result = [Int]()

var currentIndex:Int

for i in iList {
    if( i == iList.count){
        print("REACHED")
    break
    }
    let nextitem = iList[i+1]
    result.append(i*nextitem)
}

print(result)



