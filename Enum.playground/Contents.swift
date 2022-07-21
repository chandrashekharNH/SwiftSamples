import Foundation

/*
 Enum is user defined data type with user defined values
 Raw value =  By default all enum case has a Int type value started from 0.Assigning the values to enum case  explicitly spicifying data type is raw value
 Associated Values =
 */


enum ActionType : String, CaseIterable  {
    case Read = "I am reading"
    case Write = "I am Writing"
    case Eat = "I am eatting"
    case Sleep = "I am sleeping"
}


func getMyAction(action:ActionType){
switch(action){
case .Read:
    print(action.rawValue)
case .Write:
    print(action.rawValue)
case .Eat:
    print(action.rawValue)
case .Sleep:
    print(action.rawValue)
}
}

var action = ActionType.Write
getMyAction(action: action)


print("Count:\(ActionType.allCases.count)")


for iten in ActionType.allCases {
    print(iten)
}
