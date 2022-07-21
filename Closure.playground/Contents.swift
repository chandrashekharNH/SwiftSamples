import Foundation

/*
 Closure is  block of statements which can be
 - Passed to fucntion as argument
 - stored to variable
 - added to the collection :(Array, dictionary etc)
 
 
 */

/*AutoClosure
It’s all in the name: @autoclosure automatically creates a closure from an argument passed to a function. Turning an argument into a closure allows us to delay the actual request of the argument.
 
 */

struct CCompany {
    var cName:String
    var info:String {
        return "Company \(cName)"
    }
}


var isDebug = true

func getCompanyInfo(_ name:@autoclosure ()->String) {
    print("I am in method")
    if(isDebug){
        print("I am working in \(name())")
    }
}

var company = CCompany(cName: "Infosis")
getCompanyInfo(company.info)


//typealias - alias name to closure.If multiple places we are using same closure the make it alias
typealias swapClosue = (Int, Int) -> (Int, Int)

var swapUsingTypealias: swapClosue = {
    print("Swap Using typealias")
    return ($1,$0)
}

//return type as tuples
var swapWithReturnTuples :(Int,Int)->(Int,Int) = {
    (n1,n2) in
    print("Swap Using tuples")
    return (n2,n1)
}

//Short hand Sytax
var add:(Int,Int)->Int = {
    print("Add Short hand Sytax")
    return $0 + $1
}

print(swapUsingTypealias(20,100))
print(swapWithReturnTuples(20,100))
print(add(20,100))



//Trailing Closure
//Passing closure as last argument in function is called trailing closure

func getData(url:URL, completion:@escaping ((Result<Data,Error>)->Void)) {
    let datatask = URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else {
            return
        }
        print("RESPNSE DATA:\(data)")
        
        completion(.success(data))
    }
    datatask.resume()
}


func getData(url:String, completion:(String)->Void) {
    print("Closure is Done")
}


getData(url:  "https://api.publicapis.org/entries", completion:{
    (string) in
    print("Closure ")
    print("Closure ")
    print(string)
})

getData(url: "https://api.publicapis.org/entries") { string in
print(string)
}


    



