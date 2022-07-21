import UIKit


//Swift
//Swift is type safe langauge because it does not allow implicit type casting.Example If you declare Int and try to store float in it.Swift does not allow.

let A:Int
//A = 20.3(Throws the error)
//Type Cast
A = Int(20.3)


let age:Int = 10
let percentage:Float = 99.1
let graututy:Double = 100303030.1000101
let alpha:Character = "A"
let name:String = "RAJU"
let sex:Bool = true
let attributes : Array = ["House","Land","Car"]
let parent: Set = ["Raj","raghu"]
let familyMember:Dictionary = ["Son":"rr","Father":"SS"]
let any:Any = 100.202


//Array and Set
//Array: ordered, random-access collection.
var arrayOfInt : Array<Int> = [1,2,3]

//SET: An unordered collection of unique elements.
var setOfInt: Set = [1,19,2]
arrayOfInt.insert(10, at: arrayOfInt.count)
setOfInt.insert(10)
setOfInt


//Swift Hashable
//Hashable is protocol that provides the hash value to our product. Hash value helps to compare to instances.

struct Employee:Hashable {
    var name:String
    var age:Int
    
    //Compare Specific properties(if Name is same then hash value is same)
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

let obj1 = Employee(name: "S", age: 12)
let obj2 = Employee(name: "cS", age: 32)



let obj3 = Employee(name: "Sw", age: 12)
let obj4 = Employee(name: "wS", age: 12)



print(obj1.hashValue)
print(obj2.hashValue)

print(obj3.hashValue)
print(obj4.hashValue)


//Type annotation(If specify type in declaration)
var eName:String = "CS"

//inference(If type is not specify  in declaration)
var eNames = "CS 2"
