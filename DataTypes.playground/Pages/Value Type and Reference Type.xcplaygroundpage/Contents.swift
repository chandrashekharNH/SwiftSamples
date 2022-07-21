//: [Previous](@previous)

import Foundation


//Objective C does not contain raw and associate value

// Struct is value Type
struct CarInStructure {
    var carName:String
    init(carName1:String) {
        carName = carName1
        print("\(carName) is ready")
    }
    
    //Change values
   mutating func resetCarName(name:String){
        carName = name
    }
}

var dadInStructure = CarInStructure(carName1:"Hydui")
dadInStructure.carName = "Dad Car"

var sonInStructure = dadInStructure

print("Structure:       \(dadInStructure.carName)")

sonInStructure.resetCarName(name: "SON in law CARD")
print("Structure:       \(sonInStructure.carName)")

sonInStructure.carName = "son Car"

print("Structure:       \(dadInStructure.carName)")
print("Structure:       \(sonInStructure.carName)")




//Class is references type
class CarInClass {
    var carName:String
    init() {
        carName = "Hyndui Car"
        print("\(carName) is ready")
    }
}

let dad = CarInClass()
dad.carName = "Dad Car"

let son = dad
son.carName = "son Car"

print("Class:       \(dad.carName)")
print("Class:       \(son.carName)")



