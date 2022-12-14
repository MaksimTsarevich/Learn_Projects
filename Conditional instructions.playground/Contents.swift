// IF

var temperature = 15
if temperature >= 0 {
    print("sunny")
}

temperature = -11
if temperature >= 0 {
    print("sunny")
} else {
    print("it's very cold")
}

temperature = 16
if temperature >= 0 && temperature < 16{
    print("Good temperature")
} else if temperature > 15 {
    print("Sunny")
} else {
    print("Cold")
}


// Switch
let someCharacter: Character = "z"

switch someCharacter{
case "a":
    print("First character")
case "z":
    print("Last character")
default:
    print("Some other character")
}

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("Another A")
default:
    print("Error")
}

let number = 61

switch number {
case 0:
    print("no")
case 1..<10:
    print("a")
case 10..<50:
    print("b")
case 50..<100:
    print("cccc")
default:
    print("Error")
}

// Кортежи
let somePoint = (1,1)

switch somePoint {
case (0, 0):
    print("origin")
case (_, 0):
    print("x")
case (0, _):
    print("y")
case (-2...2, -2...2):
    print("In box")
default:
    print("Out box")
}

// Привязка значений
let anotherPoint = (2, 0)

switch anotherPoint {
case (let x, 0):
    print("x: \(x)")
case(0, let y):
    print("y: \(y)")
case let (x, y):
    print("\(x) , \(y)")
}

// Where
let yetAnotherPoint = (1, -1)

switch yetAnotherPoint {
case let (x, y) where x == y:
    print("\(x), \(y) x == y")
case let (x, y) where x == -y:
    print("\(x), \(y) x == -y")
case let(x, y):
    print("\(x), \(y) this some point")
}

// Операторы передачи управления
// Continue
let puzzleInput = "Hello world"
var puzzleOutput = ""
var charactersToRemove: [Character] = [ "a", "e", "o", "i", "u", " "]

for character in puzzleInput{
    if charactersToRemove.contains(character){
        continue
    } else {
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)

// Break
let numberSymbol = "three"
var valueInt: Int?

switch numberSymbol{
case "1", "one":
    valueInt = 1
case "2", "two":
    valueInt = 2
case "3", "three":
    valueInt = 3
default:
    break
}

if let newValue = valueInt{
    print("\(numberSymbol) it is \(newValue)")
} else {
    print("not be found symbol '\(numberSymbol)'")
}

// Fallthrough

let integerToDesrcibe = 5
var description = "Hello \(integerToDesrcibe)"

switch integerToDesrcibe{
case 1,2,3,4,5,6:
    description += " World"
    fallthrough
default:
    description += ", my name is"
}

print(description)
