import Foundation
var personOne = (name: "Max", hight: 195, wight: 65)

print(personOne)
print(personOne.name)
print(personOne.hight)
print(personOne.wight)

print("name: \(personOne.0) ")
print("hight: \(personOne.1)")
print("wight: \(personOne.2)")

var personTwo = (name2: "Fedya", hight2: 190, wight2: 50)

var name1 = personOne.name
personOne.name = personTwo.name2
personTwo.name2 = name1

var hight1 = personOne.hight
personOne.hight = personTwo.hight2
personTwo.hight2 = hight1

var wight1 = personOne.wight
personOne.wight = personTwo.wight2
personTwo.wight2 = wight1

print(personOne)
print(personTwo)

if personOne.hight >= personTwo.hight2 {
    print(personOne.hight - personTwo.hight2)
} else {
    print(personTwo.hight2 - personOne.hight)
}

if personOne.wight >= personTwo.wight2 {
    print(personOne.wight - personTwo.wight2)
} else {
    print(personTwo.wight2 - personOne.wight)
}

