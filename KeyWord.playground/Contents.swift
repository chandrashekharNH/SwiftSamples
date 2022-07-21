import UIKit

/*
Defer:  you might want to make sure that some temporary resources are cleaned up once a method exits, and defer will make sure that happens no matter how that exit happens. Introduced in Swift 2.Mulple defer executes in stackflow(FIFO)
*/

func printMe(){
    defer { print("Cleaning ENDS") }
    defer { print("Cleaning started") }
    defer { print("Please do cleaning here.....") }
    print("WELCOME")
    for i in 1...10 {
        print(i)
    }
    print("END")
}
printMe()


/*
 Guard let
 - Check nil for option properties and return controller if nil
 If let
 - Checks nil for option properties and continues execution if nil
 */

var fname:String?
func addMe(fname:String,lname:String?)->String {
//    if let lastName = lname {
//      return  fname + lastName
//    }
    guard let lname = lname else { return fname}
    return fname  + lname
}


print("NAME: \(addMe(fname: "CS", lname: "Hodlur"))")


/*
 Mutating
 Struct properties can be modifible in method
 In Example name and age is edited
 */

struct person{
    var name:String
    var age:Int
    mutating func updateAgeAndName(nName:String,aAge:Int){
        name = nName
        age = aAge
    }
}

var p = person(name: "CS", age: 10)
p.updateAgeAndName(nName: "CSCSCS", aAge: 1000)
print("Name:\(p.name) Age:\(p.age)")

/*
 InOut
 - Arguments are not editable.So we can you Inout to edit the value of the parameters
 Pass reference of the object in method
 */
var x = 100
func updateX(xx: inout Int){
    xx += 10
    print(xx)
}
updateX(xx: &x)
print(x)


/*
 Option binding - Bind optional to varible.It check if its nil
 option chaining
 */
struct Parts{
    var name:String?
    var price:Int?
}

class computerParts {
    func getParts(partName:String)->Parts? {
        if (partName == "keyboard"){
            return Parts(name: "Key-Board", price: 100)
        } else if(partName == "mouse"){
            return Parts(name: "mouse", price: 300)
        }
        return nil
    }
}

var cParts = computerParts()
if let parts = cParts.getParts(partName: "keyboard"){
    if let price = parts.price {
        print("Price: \(price)")
    }
}

//Option chaining
if let price = cParts.getParts(partName: "mouse")?.price{
        print("Price: \(price)")
}



