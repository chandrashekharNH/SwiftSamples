import UIKit

/*
 access specifier are the way to specify  availabilities  scope of the variable and method
 
 public - allow to access outside module but restrict to subclass and override
 private - access within that scope(where we declared)
 FilePrivate - access within that file
 Open - allows access outside module , we can subclass and override
 Internal - default key - access within  module 
 
 
Q1. Internal is default specifies
Q2. Difference between the Private and FilePrivate
    Private -  is accessible within the class
    FilePrivate -  is accessible within the file.(Useful in extension class)
 Q2. Public vs Open
    -
 */

class A {
    private  var gstTax = 20
    private  var entertanmentTax = 20
    private  var hiddenTax = 20

  fileprivate  var filePrivateVar = 30
  public  var publicVar = 20

    
    func taxCalculation(Income:Int)-> Double {
      return calculateTax(Income: Income)
    }
    
    private func calculateTax(Income:Int)-> Double {
        return Double(Income + gstTax + entertanmentTax + hiddenTax)
    }
    
}

class B : A {
    func getMyTax(){
        let tax = A()
        print("My Tax :\(tax.taxCalculation(Income: 100))")
    }
}


let b = B ()

b.getMyTax()
