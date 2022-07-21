import UIKit
var listInt = [2,10,3,3,25,88,30]
var listFloat = [2.3,10.5,3.1,25.4,88,30.22]

//Simple method
func getselectionSort(list:inout [Int])->[Int]{
    var min = 0
    var j = 0
        for i in 0..<list.count {
                min = i
                j = i+1
        for  j in stride(from:j, to: list.count, by: 1){
        if list[min]>list[j]{
            min = j
        }
    }
            let temp = list[i]
            list[i] = list[min]
            list[min] = temp
        }
    return list
}

//print("selection Sort:\(getselectionSort(list:&listInt))")

//Generic

func getselectionSortWithgeneric<T:Comparable>(list:inout [T]) -> [T]{
    var min = 0
    var j = 0
    
    for i in 0..<list.count{
        min = i
        j = i+1
        for j in stride(from: j, to: list.count, by: 1){
            if(list[min]>list[j]){
                min = j
            }
        }
            let temp = list [min]
            list[min] = list[i]
            list[i] = temp
        }
    return list
}

//print("selection Sort By generic :\(getselectionSortWithgeneric(list:&listFloat))")


//Closure

var SortedList:(inout [Int])->[Int] = {
    (list) in do {
        var min = 0
        var j = 0
        for i in 0..<list.count{
            min = i
            j = i+1
            for j in stride(from: j, to: list.count, by: 1){
                if(list[min]>list[j]){
                    min = j
                }
            }
                let temp = list [min]
                list[min] = list[i]
                list[i] = temp
            }
        }
    return list
}



print("Sorted List By Closure\(SortedList(&listInt))")
