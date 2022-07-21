//: [Previous](@previous)

import Foundation

class A {
    var b:B? = nil
    init ( ){
     }
    
    deinit {
        print("Deallocated A")
    }
    
}

class B {
    var a:A? = nil
    init ( ){
     }
    
    deinit {
        print("Deallocated A")
    }
}


var aCreated: A? = A()
var bCreated: B? = B()

aCreated?.b = bCreated
bCreated?.a = aCreated


