import UIKit

//FizzBuzz

//func FizzBuzz(){
//    (1...100).forEach(){
//        print($0 % 3 == 0 ? $0 % 5 == 0 ? "FIZZ BUZZ" :"BUZZ" : $0 % 5 == 0 ? "BUZZ" : "\($0)")
//    }
//}
//
//
//FizzBuzz()



//swap two number

func swapTwoNumber(num1:Int,num2:Int) {
   //Arthimatic logic
    var number1 = num1
    var number2 = num2
    print("Before Swap   \(number1) \(number2)")
    
    
//    number1 = number1 + number2
//    number2 = number1 - number2
//    number1 = number1 - number2
    
    //Using XOR
//    number1 = number1 ^ number2
//    number2 = number1 ^ number2
//    number1 = number1 ^ number2
    
    
    //Using swift swap
    //swap(&number1, &number2)
    
    
    //Using tuple
    (number1,number2) = (number2,number1)
    
    
    print("After Swap  \(number1)  \(number2)")

}

//swapTwoNumber(num1:10,num2:20)


//Prime number

func findPrimeNumber(number:Int) -> Bool {
    guard number >= 2 else { return false }
    for i in 2 ..< number {
        if number % i == 0 {
            return true
        }
    }
    return true
}


print(findPrimeNumber(number: 90))
