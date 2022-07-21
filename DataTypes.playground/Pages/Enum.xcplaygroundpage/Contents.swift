//: [Previous](@previous)

import Foundation

enum BoxOfficeRating: String {
    case allTimeBest = "*****"
    case SuperHit = "****"
    case Hit = "***"
    case Average = "**"
    case Flop = "*"
    case Disaster = ""
}

let movieName = "*****"

if BoxOfficeRating.allTimeBest.rawValue == movieName {
    print("allTimeBest")
} else if BoxOfficeRating.SuperHit.rawValue == movieName {
    print("SuperHit")
} else  if BoxOfficeRating.Hit.rawValue == movieName {
    print("Hit")
} else if BoxOfficeRating.Average.rawValue == movieName {
    print("Average")
} else if BoxOfficeRating.Flop.rawValue == movieName {
    print("Flop")
} else if BoxOfficeRating.Disaster.rawValue == movieName {
    print("Disaster")
}

