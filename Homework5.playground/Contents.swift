import UIKit

/*
Exercise 1
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

// The parent class
class Figure {
    var height: Float
    var width: Float
    var radius: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    
    init(heightA: Float, widthA: Float){
        self.height = heightA
        self.width = widthA
    }
    
    func squareOfFigure() -> Float{
        square = height * width / 2
        return square
    }
    
    func perimeterOfFigure() -> Float{
        perimeter = width + width + width
        return perimeter
    }
}

// The child class
class Rectangle: Figure{
    override func squareOfFigure() -> Float {
        square = height * width
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = height * 2 + width * 2
        return perimeter
    }
    func description() {
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())\n")
    }
}

var myRectangle = Rectangle(heightA: 2.5, widthA: 3.2)
myRectangle.squareOfFigure()
myRectangle.perimeterOfFigure()
myRectangle.description()

/*
 Exercise 2.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 */

enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int{
    
    var result = numberOne
    
    switch calculationType {
        case .addition: result += numberTwo
        case .substraction: result -= numberTwo
        case .multiplication: result *= numberTwo
        case .division: result /= numberTwo
    }
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
Exercise 2.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

var numberOne = 6
var numberTwo = 2

var firstTask = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .addition)
var secondTask = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .substraction)
var thirdTask = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .multiplication)
var fourthTask = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .division)

/*
Exercise 3

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

Create func getSpecs() print it with elements provided above
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsPower: Int
    
    func getSpecs() {
        print("\n\(name), \(productionYear), \(horsPower)")
    }
}

let audiQ7 = Car(name: "Audi Q7", productionYear: 2015, horsPower: 273)
let audiTT = Car(name: "Audi TT", productionYear: 2021, horsPower: 258)
audiQ7.getSpecs()
audiTT.getSpecs()

