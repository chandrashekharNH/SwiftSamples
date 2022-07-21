//: [Previous](@previous)

import Foundation
let n: Int = 10

 //Range operator
print("Closed range")
for i in 0...n {
    print(i)
}

print("Half open range(Last value will not be consider)")
for i in 0..<n {
    print(i)
}

print("Onesided  range")
let numbers = [0,1,2,3,4,5,6,7,8,9,10]
for i in numbers[5...] {
    print(i)
}
for i in numbers[5...8] {
    print(i)
}


/* Identity Operator
 ===
 !==


Conditional statements
if
if else
if else ladder
switch
*/

//Switch

let count = 0


switch count {
case 0:
    print("I am in start")
    fallthrough
case 1...10:
    print("i am in middle")
case 10...count:
    print("Almost reached the end")
default:
    print("Sorry you are out")
}

//fallthrough continues the next case even though condition does not match
