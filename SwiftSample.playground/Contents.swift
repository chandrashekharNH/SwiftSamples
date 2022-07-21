import UIKit
import os

struct Account{
    let hiddenCharges:Double?
}


func getCharges(prices:[Double],hiddenCharges:Double)->(Double?,priceError?){
    
    guard let charges = hiddenCharges else{
        return (priceeeror)
    }
    
}




/* optional check */
struct User:Equatable {
    let name:String?
    let email:String
    let address:String
    let password:String
    static func == (lhs:User,rhs:User)-> Bool {
        return lhs.name == rhs.name && lhs.email == rhs.email
    }
    
    let amIAdmin : Bool
    let amIDev : Bool
    let amIUser:Bool
}

func getUserPermission(user:User)->(String,Bool){
    switch(user.amIAdmin,user.amIDev,user.amIUser){
    case (true,true,true):
            return ("I am Admin",true)
    case (false,true,false):
            return ("I am Dev",false)
    case (false,false,true):
            return ("I am user",true)
    case (false,false,true):
            return ("I am user",true)
    case (false,false,false):
            return ("Not allow",true)
    case (true,false,true):
            return ("I don know",true)
    case (false, true, true):
        return ("I don know",true)
    case (true, false, _):
        return ("I don know",true)
    case (_, false, false):
        return ("I don know",true)
    case (true, _, false):
        return ("I don know",true)
    }
}

var user = User(name: "1", email: "1@1.in", address: "Bangak", password: "1111",amIAdmin: false,amIDev: false,amIUser: false)


getUserPermission(user: user)



//func getValue(user:User)->String{
//    return user.name ?? "N/A"
//}
//var user = User(name: "1", email: "1@1.in", address: "Bangak", password: "1111")
//print(getValue(user: user))
//
//var users:[User] = [
//         User(name: "1", email: "1@1.in", address: "Bangak", password: "1111"),
//         User(name: "1", email: "1@1.in", address: "Bangak", password: "1111"),
//         User(name: "1", email: "1@1.in", address: "Bangak", password: "1111"),
//         User(name: "1", email: "1@1.in", address: "Bangak", password: "1111"),
//         User(name: "1", email: "1@1.in", address: "Bangak", password: "1111"),
//         User(name: "1", email: "1@1.in", address: "Bangak", password: "1111")
//]
//
//
//
//
//func getUserInfo(user:User)->User? {
//    return users.filter{$0 == user}.first
//}
//
//
//print(getUserInfo(user:user))

//COmpare and return


/*
 Remove Duplicate
 */
let list = [1,2,3,4,5,6,4,2,1,34,5,6,3]
let listChar = ["1","2","3","4","5","6","4","2","1","34","5","6","3"]

let listAny:[Any] = [1,"d",3,"C",5,6,4,2,1,"3",5,6,3]


func getUniqueListBySet(aList:[Int])->Set<Int>{
    let list = Set(aList)
    return list
}

//print(getUniqueList(aList: list))
/*Problem with Set is It will
1. unorder list
2. returns the set(We need array)
 */


func getUniqueList(aList:[Int])->[Int]{
    guard !aList.isEmpty else { return [] }
    var temp:[Int] = []
    aList.forEach{ item in
        if(!temp.contains(item)){
            temp.append(item)
        }
    }
    return temp
}
    //print(getUniqueList(aList: list))


//Using Generic

extension Array where Element : Equatable {
    func removeDuplicate() -> [Element]{
        guard !self.isEmpty else {  return [] }
        var temp :[Element] = []
        self.forEach{ item in
            if(!temp.contains(item)){
                temp.append(item)
            }
        }
        return temp
    }
}


print(list.removeDuplicate())
print(listChar.removeDuplicate())




/*
 Get Capital Character
 */

func getCapChar(fromString input:String)->String?{
    guard input.isEmpty == false else { return nil}
    let result = input.filter({("A"..."Z").contains($0)})
    return result.isEmpty ? nil: result
}


print(getCapChar(fromString: "CshhshsTsjjsjsC"))


func getIntFromAnyList(list:[Any])->[Int] {
    guard list.isEmpty == false else { return [] }
    
    let aList = list.compactMap{ item in
        item as? Int
    }
    
    return aList.isEmpty == false ? aList:[]
}


getIntFromAnyList(list: listAny)
