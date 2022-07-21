//: [Previous](@previous)

//Function / methods block of statement with specific task
//Function is global .Method is associated with class or structure

import Foundation

class A {
    var count:Int = 10
    
    func printMe(){
        print("A Class Method")
    }
    
    //Editable argument
    func resetCount(countL:inout Int){
        countL += count
        count = countL
        print(count)
    }
    
    func printMeToo(counts:Int...){
    print(counts)
    }
    
    func addMe(str1:String, str2:String = "CS"){
        print(str1 + str2)
    }
    


func printMe(){
    print("Global function")
}

printMe()

let a = A()
a.printMe()
var myNum = 10
a.resetCount(countL:&myNum)


//Variadic params method which allows  dynamic number of arguments
a.printMeToo(counts:1,2,3,4,5,67)


//Default value to argument
    a.addMe(str1:"CHANDRASHEKHAR",str2:"HODLUR")
    a.addMe(str1:"JYOTI")


