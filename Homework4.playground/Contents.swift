import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myteam = "Girls"
var resultsOfGames = [String: [String]]()
resultsOfGames = ["Brooklyn Nets" : ["99:89", "109:99"], "Dallas Mavericks" : ["87:93", "104:97"], "Washington Wizards" : ["117:112", "107:122"]]

for (team, scores) in resultsOfGames {
    for score in scores {
        print("\(myteam) against \(team) scored - \(score)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var vallet: [Int] = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(_ numbers: Int...) -> Int {
    var total = 0

    for money in vallet {
        total += money
    }
    return total
}
print("\nThe sum of the cash inside my wallet is \(calculateCash()) EUR")         // The function is called on print line

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(_ myNumber: Int) -> Bool{
    if myNumber % 2 == 0 {
        return true
    }else{
        return false
    }
}
isEvenNumber(8)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(_ numberOne: Int, rangeTo numberTwo: Int) -> [Int] {
    var rangeArray = [Int]()
    
    for i in numberOne...numberTwo {
        rangeArray.append(i)
    }
    return rangeArray
}
createArray(1, rangeTo: 100)
var finalArray = createArray(1, rangeTo: 100)
print("\nArray from 1 to 100: \(finalArray)")

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for evenNumber in finalArray {
    if isEvenNumber(evenNumber) == true{
        finalArray.remove(at: finalArray.firstIndex(of: evenNumber) ?? 0)
    }
}
print("\nThe 1/2 of array with \(finalArray.count) numbers, odd numbers only: \(finalArray)")
