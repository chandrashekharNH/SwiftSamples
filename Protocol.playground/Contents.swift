import UIKit

/*
 In Swift, a protocol defines a blueprint of methods or properties that can then be adopted by classes (or any other types).
 
 The protocol just holds the method or properties definition, not their actual body.
 The protocol must specify whether the property will be gettable or gettable and settable.
 
 Swift Protocol can Inheritance
 Swift Protocol can have Extensions
 A protocol can inherit multiple protocols
 
 There are two varieties of protocol, formal and informal:

 A formal protocol declares a list of methods that client classes are expected to implement. Formal protocols have their own declaration, adoption, and type-checking syntax. You can designate methods whose implementation is required or optional with the @required and @optional keywords. Subclasses inherit formal protocols adopted by their ancestors. A formal protocol can also adopt other protocols.
 Formal protocols are an extension to the Objective-C language.

 An informal protocol is a category on NSObject, which implicitly makes almost all objects adopters of the protocol. (A category is a language feature that enables you to add methods to a class without subclassing it.) Implementation of the methods in an informal protocol is optional. Before invoking a method, the calling object checks to see whether the target object implements it. Until optional protocol methods were introduced in Objective-C 2.0, informal protocols were essential to the way Foundation and AppKit classes implemented delegation.
qwqertyuiopasdfhll
 
 FORMAL PROTOCOL is Extension
 INFORMAL PROTOCOL is category
 
 
 */


//Protocol bagalkot ,Badam, Ilkar
//Properties (Name , address ,shopType, code,)
//Methods -> getInformation()

//Class branch ->


protocol Bagalkot {
    var code : Int{ get}
    var name :String{ get}
    var address:String{ get}
    var shopType:String{ get}
    
    func getFullInfo()->String
}

extension Bagalkot {
    func getSpecialOffers() -> String {
        return "No offers"
    }
}
protocol Badam {
    var code : Int{ get}
    var name :String{ get}
    var address:String{ get}
    var shopType:String{ get}
    func getFullInfo()->String
}

protocol Ilkal {
    var code : Int{ get}
    var name :String{ get}
    var address:String{ get}
    var shopType:String{ get}
    func getFullInfo()->String
}


protocol Branch : Bagalkot,Badam,Ilkal{
    func getOffer()
}


struct CSBusiness : Branch  {
    var name : String
    var code : Int
    var address : String
    var shopType :String

    
    func getFullInfo()-> String {
        return "name:\(name)"
    }
    func getOffer() {
        print("No offers")
    }
}


var b = CSBusiness(name:"Bagalkot CS", code: 10, address: "ADDRESSSS", shopType: "ELECTRONICS")
print(b.getFullInfo())
print(b.getOffer())
