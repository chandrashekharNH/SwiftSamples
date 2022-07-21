//: [Previous](@previous)

import Foundation

//Class is a Blueprint or template /Logical structure / Skeleton to create a object
//Class does not have memory.

//What is instance or object
//Object is instance of class. Collection of properties and methods
//Object holds the memory


//What is properties
//Properties are instance of a class/ structure which stores the information about the class
//What are the different types of properties in swift
/*
 1.Stored properties :- holds the direct value
 2.Computed properties :- value can be calculated when acees time using different properties within class
 3.Lazy properties :- Memory will be allocated when instance/Variable is  in  actual use
 4.Static / Type Properties :- Class level properties whose memory will be allocated once
 
 */


class Movie{
    var name :String = "M2"//Stored properties
    var director :String = "RAJU"//Stored properties
    static var budget :String = "$100"//Static properties
    lazy var summary :String = "sksksk ffhff sjdjjdd fhfhf"//Lazy properties

    
    
//Computed properties
    var detail :String {
        return name + director
    }
}


let m = Movie()

print(m.name)
print(m.director)
print(m.detail)
print(m.summary)

print(Movie.budget)

