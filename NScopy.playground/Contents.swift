
import Foundation

class Person: NSObject, NSCopying {
    var firstName: String
    var lastName: String
    var age: Int

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }

    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Person(firstName: firstName, lastName: lastName, age: age)
        return copy
    }
}


let paul = Person(firstName: "Paul", lastName: "Hudson", age: 36)
let sophie = paul.copy() as! Person

sophie.firstName = "Sophie"
sophie.age = 6

print("\(paul.firstName) \(paul.lastName) is \(paul.age)")
print("\(sophie.firstName) \(sophie.lastName) is \(sophie.age)")
