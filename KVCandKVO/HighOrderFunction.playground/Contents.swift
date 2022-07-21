import UIKit

/*
 
 - Draw back - Creates the separate collection as return
 
 performa is very quik
 Filter - performs filter on collection based on some creteria
 Map - Applies some operation on each element of a collection
 Flat Map - create single collection from nested collection elements
 CompactMap -  removes the nil in collection
 reduce - works on collection to prepare single values from collection of values.
 */


let list:[Int] = [2,4,5,6,7,2,15,67,8]

let evenList = list.filter({$0 % 2 == 0})
let oldList = list.filter({$0 % 2 == 1})


//print("Even List:\(evenList)")
//print("Old List:\(oldList)")


let multiple = list.map({$0*2})


//print("Multify\(multiple)")


class Person {
    var name :String
    var isAdult : Bool
    var age:Int
    
    init(name:String,isAdult:Bool,age:Int){
        self.name = name
        self.isAdult = isAdult
        self.age = age
    }
}


var personList = [
Person(name: "CS", isAdult: true, age: 37),
Person(name: "Raj", isAdult: false, age: 02),
Person(name: "kk", isAdult: true, age: 93),
Person(name: "Nil", isAdult: false, age: 34)]

//var adultList = personList.filter({return $0.isAdult})
//print("Adults list\(adultList)")
//
//var name = personList.map({$0.name})
//print("Name list\(name)")

var name = personList.filter({$0.name.starts(with: "R")})
print("Name Starts with C\(name)")
