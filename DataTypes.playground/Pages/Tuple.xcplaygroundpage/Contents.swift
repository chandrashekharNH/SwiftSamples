//: [Previous](@previous)

import Foundation

 //Tuples
//Tuple is grouping multiple values to a single varible.Use tuple when we want to return mulple values from methods

print("==== Method 1 =====")

let responseInfo = ("responseCode","responseData",100)
print(responseInfo.0)
print(responseInfo.1)
print(responseInfo.2)

print("==== Method 2 =====")

let (responseCode,responseData,ErrorCode) = ("responseCode","responseData",100)
print(responseCode)
print(responseData)
print(ErrorCode)

print("==== Method 3 =====")

let responseInfo3 = (responseCode:"shdhddhhd",responseData:"HSHSHSHSHHSS",ErrorCode:100)
print(responseInfo3.responseCode)
print(responseInfo3.responseData)
print(responseInfo3.ErrorCode)
