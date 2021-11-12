import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var period = 5
var startDeposit: Double = 500000
var rate = 5.5
var profit: Double = 0
var deposit: Double = 0

var yearProfit = startDeposit * rate

for _ in 1...period{
    profit += yearProfit
}
deposit = startDeposit + profit
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var anyNumbers: [Int] = []
anyNumbers = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

var evenNumber: [Int] = []

for anyNumber in anyNumbers {
    if anyNumber % 2 == 0 {
        evenNumber.append(anyNumber)
    }
}
print("\nMy even numbers are: \(evenNumber)\n")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0
var randomNumber = 0

for _ in 1...6 {
    randomNumber = (Int.random(in: 1..<6))
    counter += 1
    print("Shuffle \(counter) has number \(randomNumber)")
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

// Task solution if during the night the bug goes on slower, with the speed of 1m
var numberOfDays = 0
var meters = 0

while meters < 10 {
    meters += 2
    numberOfDays += 1
    meters += 1
}
print("\nScenario 1: bug will spend \(numberOfDays) days to reach top of the post")

// The task solution after the correction in scenario if the bug goes 1m down in the night
var numberOfDays1 = 0
var meters1 = 0
var isDay = true

while meters1 != 10 {
    if isDay {
        meters1 += 2
        numberOfDays1 += 1
        isDay = false
    }else{
        meters1 -= 1
        isDay = true
    }
}
print("\nScenario 2: bug will spend \(numberOfDays1) days to reach top of the post")
