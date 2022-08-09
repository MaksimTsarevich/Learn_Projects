// Операторы присваивания
let b = 10
var a = 5
a = b

let (x, y) = (1, 2)
x
y

// Арифметические операторы
let sum = 1 + 3
let sub = 5 - 3
let mult = 2 * 4
let div = 10.0 / 2.4

let welcomeString = "Hello, " + "world"

// Оператор целочисленного деления

let c = 10 % 4 // 2

// Оператор унарного минуса

let three = 3
let newThree = -three // -3
let plusThree = -newThree // 3

// Оператор унарного плюса
let minusSix = -6
let plusSix = +minusSix // -6

// Составные операторы присваивания
var g = 1
g += 2 // 3

// Операторы сравнения
three == plusThree // true
three != newThree // true
three > newThree // true
three < sub // false
three >= sub // true
three <= mult // true

let name = "Hello"
if name == "Hello"{
    print("Hello world")
} else {
    print("Error")
}

(1, "z") < (2, "a")
(3, "a") < (3, "b")
(5, "d") == (5, "d")

// Тернарный условный оператор
let contentHeight = 40
let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)
var rowHeight = contentHeight

if hasHeader{
    rowHeight += 50
} else {
    rowHeight += 20
}

// Оператор объединения по nil
let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

// Оператор замкнутого диапазона

for index in 1...5 {
    print("\(index) mult 5 = \(index * 5)")
}

// Оператор полузамкнутого диапазона
let names = ["Max", "Ilya", "Fedya", "X"]
let count = names.count

for i in 0..<count {
    print("\(i + 1) names \(names[i])")
}

// Односторонние диапазоны
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

// Оператор логического НЕ
let allowewEntry = false
if !allowewEntry{
    print("Error")
}

// Оператор логического И
let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan{
    print("Yes")
} else {
    print("Noooooo")
}

// Оператор логического ИЛИ

if enteredDoorCode || passedRetinaScan{
    print("Yes")
} else {
    print("Nooooo")
}

// Комбинирование логических операторов
if allowewEntry && passedRetinaScan || enteredDoorCode {
    print("Yeeeeeeees")
} else {
    print("No please repeate ")
}
