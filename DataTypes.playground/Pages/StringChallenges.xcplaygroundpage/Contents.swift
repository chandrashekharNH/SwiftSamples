//: [Previous](@previous)

import Foundation
// MARK : -Challenge 1    Are letters are unique?
func lettersUniqueSolution1(inputString:String)->Bool {
    var charString = [Character]()
    for char in inputString {
        if(charString.contains(char)){
            return false
        }
        charString.append(char)
    }
    return  true
}

//Best way
func lettersUniqueSolution2(inputString:String)->Bool {
    return Set(inputString).count ==  inputString.count
}

print("letters are unique Solution 1:\(lettersUniqueSolution1(inputString:"cjsalweuyrytiwiwiwjejejr"))")
print("letters are unique Solution 2:\(lettersUniqueSolution2(inputString:"cjsalweuryt"))")


// MARK : - -------------------------------------------------------

// MARK : - Challenge 2    Palindrome

func palindromeSolution(inputString:String)->Bool {
    let lowerCase = inputString.lowercased()
    return lowerCase.reversed() == Array(lowerCase)
}

print("palindrome Solution:\(palindromeSolution(inputString:"Badab"))")
print("palindrome Solution:\(palindromeSolution(inputString:"adaba"))")




// MARK : - -------------------------------------------------------

// MARK : - Challenge 3    character of str1 contains the str2
func subStringCharacterCheckSolution(mainString:String,subString:String)->Bool {
    var charString = subString
    for letter in mainString {
        if let index  = charString.firstIndex(of: letter){
            print("removed Char:\(letter)")
            charString.remove(at: index)
            print(" Count:\(charString.count)")
        }
    }
    return charString.count == 0
}

//Compoare string
func subStringCharacterCheckSolution2(mainString:String,subString:String)->Bool {
    return mainString.count == subString.count && mainString.sorted() == subString.sorted()
}


print("subString Character Check Solution :\(subStringCharacterCheckSolution2(mainString: "abcd", subString: "ab"))")


// MARK : - -------------------------------------------------------

// MARK : - Challenge 3    check sub string in main string


extension String {
    func checkSubstringWithCaseSensitive(subString:String) -> Bool {
        return self.uppercased().range(of: subString.uppercased()) != nil
    }
    
    func checkSubstringWithInCaseSensitive(subString:String) -> Bool {
        return (self.range(of: subString, options: .caseInsensitive) != nil)
    }
}

let mainString = "mainString"

 print("Substring Exists CaseSensitive:\(mainString.checkSubstringWithCaseSensitive(subString: "str"))")
print("Substring Exists InCaseSensitive:\(mainString.checkSubstringWithInCaseSensitive(subString: "Str"))")



// MARK : - -------------------------------------------------------

// MARK : - Challenge 4    Character Count

func characterCountSolution (mainString:String, countChar:Character) -> Int {
    var count = 0
    for letter in mainString {
        if letter == countChar {
            count+=1
        }
    }
    return count
}

func characterCountSolution1(mainString:String, countChar:Character) -> Int {
    return  mainString.reduce(0){
        $1 == countChar ? $0 + 1 : $0
    }
}
func characterCountSolution2(mainString:String, countChar:String) -> Int {
    let charArray = mainString.map{String($0)}
    let Counted = NSCountedSet(array: charArray)
    return Counted.count(for: countChar)
}

func characterCountSolution3(mainString:String, countChar:String) -> Int {
    let modified = mainString.replacingOccurrences(of: countChar, with: "")
    print("Main Count\(mainString.count)")
    print("Count\(modified.count)")
    return mainString.count - modified.count
}


print("Count Of character:\(characterCountSolution(mainString:  "bagalkot", countChar: "a"))")
print("Count Of character:\(characterCountSolution1(mainString: "bagalkot", countChar: "a"))")
print("Count Of character:\(characterCountSolution2(mainString: "bagalkot", countChar: "a"))")
print("Count Of character:\(characterCountSolution3(mainString: "bagalkot", countChar: "a"))")



// MARK : - -------------------------------------------------------

// MARK : - Challenge 5 remove duplicate letters from string
func removeDuplicateUsingOrderSet(str:String) -> String {
    let arr = str.map{ String($0) }
    let sets = NSOrderedSet(array: arr)
    let letters = Array(sets) as! Array<String>
    return letters.joined()
}

func removeDuplicateUsingLoop(str:String) -> String {
    var charArr = [Character]()
    for letter in str {
        if !charArr.contains(letter){
            charArr.append(letter)
        }
    }
    return String(charArr)
}

func removeDuplicateUsingDictionary(str:String) -> String {
    var used = [Character:Bool]()
    
    let result = str.filter{
        used.updateValue(true,forKey: $0) == nil
    }
   return String(result)
}

print("Removed Duplicate character From Bagalkot is : \(removeDuplicateUsingOrderSet(str:"Bagalkot"))")
print("Removed Duplicate character From Bagalkot is 1 : \(removeDuplicateUsingLoop(str:"Bagalkot"))")
print("Removed Duplicate character From Bagalkot is 2 : \(removeDuplicateUsingDictionary(str:"Bagalkot"))")


//Remove white space
func removeWhiteSpace(str:String) -> String {
    let component = str.components(separatedBy:.whitespacesAndNewlines)
    return component.filter{!$0.isEmpty}.joined(separator:"")
}

func removeWhiteSpace1(str:String) -> String {
    var seenSpace = false
    var returnValue = ""
    
    for letter in str {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}

func removeWhiteSpaceRegularExpression(str:String) -> String {
    return str.replacingOccurrences(of: " +" , with: "" , options:.regularExpression , range: nil)
}

print("Removed space :\(removeWhiteSpace(str:" a "))")
print("Removed space Loop :\(removeWhiteSpace(str:" a "))")
print("Removed space RegularExpression :\(removeWhiteSpaceRegularExpression(str:" a "))")



//String rotation

func rotateString1(str:String,rotation:String)->Bool {
    let combined = str + str
    return combined.contains(rotation)
}
func rotateString2(str:String,rotation:String)->Bool {
    guard str.count == rotation.count else { return false }
    let combined = str + str
    return combined.contains(rotation)
}

print(rotateString1(str: "abc", rotation:"cba"))
print(rotateString2(str: "RAM", rotation:"MAR"))

//check Pangrams  string -> String with all alphabets
func pangramsCheck(str:String)->Bool {
    let sets = Set(str.lowercased())
    let letters = sets.filter{ $0>="a" && $0<="z" }
    print(letters.count)
    return letters.count == 26
}


print(pangramsCheck(str: "abcqwretyuioplkjhgfdsazxcvbnmhshhsshs"))


//check Vows and consonants


func countVowelsAndConsonants(mainStr:String) ->(vowels:Int,conso:Int){
    let vowels = "aeiou"
    let cosno = "bcdfghgklmnpqrstvwxyz"
    
    var vowelCount :Int = 0
    var cosnoCount :Int = 0
        
    for letter in mainStr {
        if vowels.contains(letter){
            vowelCount+=1
        } else if cosno.contains(letter){
            cosnoCount+=1
        }
    }
    return(vowelCount,cosnoCount)
}

print(countVowelsAndConsonants(mainStr: "Bagalkot"))


//Find three differents letter in string
func findDiff(str1:String,str2:String ) ->Bool {
    guard str1.count == str2.count else {return false}
    let strA = Array(str1)
    let strB = Array(str2)
    var diffCount : Int = 0
    for (index,letter) in strA.enumerated() {
        if strB[index] != letter {
            diffCount += 1
        }
        if diffCount == 4 {
            return false
        }
    }
    return true
}
