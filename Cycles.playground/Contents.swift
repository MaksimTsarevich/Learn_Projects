// Цыклы for-in
let names = ["Anna", "Max", "Ivan", "Kate"]

for name in names {
    print("Hello, \(name)")
}

let numberOfLegs = ["spider": 8, "cat": 4, "ant": 6]
for (name, numberLegs) in numberOfLegs {
    print("\(name) at \(numberLegs)")
}

for index in 1...5{
    print("\(index) mult 5 = \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
answer

let minutes = 60
for tickMack in 0..<minutes{
    print(tickMack)
}

let minutesInerval = 5

for tickMack in stride(from: 0, to: minutes, by: minutesInerval){
    print(tickMack)
}

let hours = 12
let hourInterval = 3
for tickMack in stride(from: 3, through: hours, by: hourInterval){
    print(tickMack)
}


// While
let finalSquare = 25
var  board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08
board[06] = +11
board[09] = +09
board[10] = +02

board[14] = -10
board[19] = -11
board[22] = -02
board[24] = -08

var square = 0
var diceRoll = 0

while square < finalSquare{
    diceRoll += 1
    if diceRoll == 7{
        diceRoll = 1
    }
    square += diceRoll
    if square < board.count{
        square += board[square]
    }
}
print("Game over")

// repeate-while
