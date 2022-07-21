import UIKit
import Foundation

//Account ,person Bank


//struct Account {
//    var accountBal:Int
//    var accountID:Int
//}
//
//
//
//struct Person {
//    var name:String
//    var account = Account(accountBal: 100, accountID: 1)
//    var accountInfo = {
//           " name"
//    }
//}
//
//
//var p = Person(name: "CS")
//
//
//print(p.accountInfo)



//Class and Structure
struct S {
    var sName:String
    var address :String
    
    mutating func showMeMyNameInStruct(){
        address = address + "\t" + sName
        print("Struct Address :\(address)")
    }
}

var ss = S(sName: "Struct Intial Name",address: "Intial address")
var ss1 = ss
ss1.sName = "RAJU"
ss1.showMeMyNameInStruct()



class C {

    var cName:String = ""
    var address :String = ""
    var url :String = ""

//    override init (){
//        self.cName = "Intial Name"
//        self.address = "Struct Intial address"
//        self.url = ""
//    }

    func showMeMyNameInClass(){
        address += "\t" + cName
        print("class  address :\(address)")
    }
    
//    func copy(with zone: NSZone? = nil) -> Any {
//        let copy = C()
//            return copy
//    }
}

//cc1.showMeMyNameInClass()

var original = C()
print("============================")
print(CFGetRetainCount(original))
//originalR = 1


//var copyObj = original.copy()
//print(CFGetRetainCount(original))
//print(CFGetRetainCount(copyObj as! C))
//
//// originalR = 2 copyObjR = 1
//print("============================")
//
//
//
//var assignObj = original
//print(CFGetRetainCount(original))
//print(CFGetRetainCount(assignObj))
//print(CFGetRetainCount(copyObj as! C))
//// originalR = 2 assignObj = 2 copyObjR = 1
//print("============================")
