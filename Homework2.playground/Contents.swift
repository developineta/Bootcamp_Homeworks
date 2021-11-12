import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var firstOne: Float = 3.14
var secondOne: Float = 42.0

var thirdOne: Double = (Double(firstOne) + Double(secondOne))
print("The result of two Floats in Double is", thirdOne)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne = 9
var numberTwo = 7
let numbersDevided = (9 / 7)
let divisionRemainder = (9 % 7)
print("\nWhen dividing \(numberOne) by \(numberTwo), the result is \(numbersDevided), the remainder is \(divisionRemainder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price = 0
var qty = 2

if 1...4 ~= qty {                     // range operator
    price = 1000
}else if 5...9 ~= qty {
    price = 900
}else if qty >= 10 {
    price = 850
}else{
    print("\nPlease choose a quantity!")
}

var totalSum = qty * price
if qty > 0 {
    print("\nnew: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge = "33a"
var input = (Int(userInputAge))            // Creates Fatal error when "!" added in the end of this line

if input == nil {
    print("\nThe age \(userInputAge) is not correct")
}else{
    print("\nYou are \(userInputAge) years old")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

var currentYear = 2021
var currentMonth = 11
var currentDay = 10

var myYear = 1983
var myMonth = 8
var myDay = 2


// days of month
let month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

/* If the birth day is greater then the current birth
    day, don't count the month and add 30
    to the date so as to subtract the date and
    get the remaining days */
if (myDay > currentDay) {
    currentDay = currentDay + month[myMonth - 1]
    currentMonth = currentMonth - 1
}

/* if the birth month exceeds the current month, don't
    count this year and add 12 to the month so
    that can subtract and find the difference */
if (myMonth > currentMonth) {
    currentYear = currentYear - 1
    currentMonth = currentMonth + 12
}

// calculate date, month, year
var totalDaysFromBirth = currentDay - myDay
var totalMonthFromBirth = currentMonth - myMonth
var totalYearsFromBirth = currentYear - myYear

print("\nTotal years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

var myQuarter = ""

switch myMonth {
case 1...3:
    myQuarter = "first"
case 4...6:
    myQuarter = "second"
case 7...9:
    myQuarter = "third"
case 10...12:
    myQuarter = "fourth"
default:
    break
}
print("\nI was born in the \(myQuarter) quarter")
