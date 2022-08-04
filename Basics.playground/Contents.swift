// Declaration of constants and variables

let const = 10
var value = 0

var x = 0.0, y = 0.0, z = 0.0


// Type annotation

var message: String
message = "Hello"

var red, green, blue: Double

// Name of constants and variables

var welcome = "Hello"
welcome = "Hi"

let languageName = "Swift"
//languageName = "Swift+" - ошибка, это константа

// Printing constants and variables

print(welcome)

print("Текущее значение welcome \(welcome)")

// Comments

// var red, green, blue: Double
/*
 message = "Hello"
 print(welcome)
 */

// Semicolons

let cat = "?"; print(cat)

// Integers

let minValue = Int.min
let maxValue = Int.max

// Floating-point numbers

let valueDouble = 0.11111111111111111111111 // 0.111_111_111_111_111_......
let valueFloat: Float = 0.222_222_222_222_222_222_222 // 0.222_222_2

// Strict typing and type output

let number = 42 // Int
let pi = 3 + 0.14 // Double

// Numerical literals

let decimalInt = 17
let binaryInt = 0b10001 // 17 в двоичной
let octalInt = 0o21 // 17 в восмеричной
let hexadecimalInt = 0x11 // 17 в шеснадцатеричной

// Conversions of integers

let twoThousand: UInt16 = 2000
let one: UInt8 = 1

let twoThousandAndOne = twoThousand + UInt16(one)

// Conversions of integers and floating-point numbers

let three = 3
let pointPi = 0.14

let piSum = Double(three) + pointPi

let intPi = Int(piSum) // 3

// Aliases of types

typealias Number = Int

let a:Number = 15
let b = 1.32
let c = Number(b) // 1 , Int

// Logical types

let swiftCool = true

if swiftCool {
    print("Yes")
} else {
    print("No")
}

// Tuples

let httpError = (404, "Error")
let (statusCode, statusMessage) = httpError

print(statusCode)
print(statusMessage)

let (justStatusCode, _) = httpError
print(justStatusCode)

print("Status code: \(httpError.0), and status message: \(httpError.1)")

let http404Error = (error404: 404, message404: "Error")

print(http404Error.error404)
print(http404Error.message404)

// Optional types (optional)

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // Int?

var serverCode: Int? = 404
serverCode = nil

var serverStatus: String? // Default nil

if convertedNumber != nil{
    print("convertedNumber integer value")
}

if convertedNumber != nil{
    print("convertedNumber integer value \(convertedNumber!)")
}

if let actualNumber = Int(possibleNumber){
    print("\(possibleNumber) integer value of \(actualNumber)")
} else {
    print("\(possibleNumber) not convert to int")
}


if let firstNumber = Int("9"), let secondNumber = Int("15"), firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}

let possibleString: String? = "Optional String"
let forcedString = possibleString!

let assumedString: String! = "Optional String"
let implicitString = assumedString

if assumedString != nil{
    print(assumedString)
}

if let newassumedString = assumedString{
    print(newassumedString)
}


// Error handling

func canThrowAnError() throws{
}

do{
    try canThrowAnError()
     // ошибка не сгенерирована
} catch{
    // ошибка сгенерирована
}

func makeASandwich(){
    print("make sandwich")
}

func eatASandwich(){
    print("eat sandwich")
}

func SandwichError(){
    
}

do{
    try makeASandwich()
    eatASandwich()
} catch {
    SandwichError()
}


// Debugging with claims

var age = -3
//assert(age >= 0, "Возраст человека не может быть меньше нуля")

age = 3
assert(age >= 0)

if age > 10{
    print("ты можешь покататься с горки")
} else if age > 0 {
    print("ты можешь покататься на колесе")
} else {
    assertionFailure("возраст человека не может быть отрицательным")
}

