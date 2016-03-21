
import Cocoa

var volunteerCounts = [1,3,40,32,2,53,77,13]

//func sortAscending(i: Int, j: Int) -> Bool {
//    return i < j
//}
//
//let volunteersSorted = volunteerCounts.sort(sortAscending)


//let volunteersSorted = volunteerCounts.sort({
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

//let volunteersSorted = volunteerCounts.sort({ i,j in i < j })


let volunteersSorted  = volunteerCounts.sort {$0 < $1}

func makeTownGrand (budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightToAdd: Int, toLights: Int) -> Int {
            return toLights + lightToAdd
        }
        return buildRoads
    } else {
        return nil
    }
    
    
    
}

func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}


var stoplights = 4

if let townPlan = makeTownGrand(1000, condition: evaluateBudget){
    stoplights = townPlan(4, stoplights)
}

if let newTownPlan  = makeTownGrand(10500, condition: evaluateBudget) {
    stoplights = newTownPlan(4, stoplights)
}

print("Knowhere has \(stoplights) stoplights.")



func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        print(totalGrowth)
        return totalGrowth
    }
    return growthTracker
}

var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)

growBy500()
growBy500()
growBy500()
currentPopulation += growBy500()


let anotherGrowBy500 = growBy500
anotherGrowBy500()




var someOtherPopulation = 4061981
let growBy10000 = makeGrowthTracker(forGrowth: 10000)
someOtherPopulation += growBy10000()
currentPopulation


let precinctPopulations = [1244, 2021, 2157]

let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations




let bigProjections = projectedPopulations.filter { (projection: Int) -> Bool in
    return projection > 4000
}

bigProjections


let totalProjection = projectedPopulations.reduce(0) { $0 + $1 }

//let totalProjection = projectedPopulations.reduce(0){
//    (accumulatedProjection: Int, precintProjection: Int) -> Int in
//    return accumulatedProjection + precintProjection
//}

totalProjection












