import Foundation
var items = [2,1,5,7,20,18]
var itemsInFloat = [2.2,1.3,5.2,7.0,20.1,18.2]

//Bubble Sort simple method
func bubbleSort(list: inout [Int])->[Int]{
    for i in 0..<list.count {
        for j in  0..<list.count-i-1 {
            if(list[j]>list[j+1]){
                let temp = list[j+1]
                list[j+1] = list[j]
                list[j] = temp
            }
        }
    }
    return list
}
print("Simple Sort Method:\(bubbleSort(list: &items))")

//Bubble Sort generic method
func bubbleSortUsingGeneric<T:Comparable>(list:inout [T])-> [T]{
    for i in 0..<list.count {
        for j in 0..<list.count-i-1{
            if list[j] > list [j+1]{
                let temp = list [j+1]
                list [j+1] = list[j]
                list[j] = temp
            }
        }
    }
    return list
}

print("Float Sort :\(bubbleSortUsingGeneric(list: &itemsInFloat))")
print("Int Sort :\(bubbleSortUsingGeneric(list: &items))")


//Bubble Sort using closure
var sortedList:(inout [Int])->[Int] = {
    (list) in do {
        for i in 0..<list.count {
            for j in 0..<list.count-i-1{
                if list[j]>list [j+1]{
                    let temp = list [j+1]
                    list [j+1] = list[j]
                    list[j] = temp
                }
            }
        }
    }
    return list
}

print("CLOSURE Sort :\(sortedList(&items))")
