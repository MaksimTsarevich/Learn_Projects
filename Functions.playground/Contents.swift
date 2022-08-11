// Объявление и вызов функций
func greet(person: String) -> String{
    let greeting = "hello, " + person
    return greeting
}

print(greet(person: "Max"))

func greetAgain(person: String) -> String{
    return "Hello, " + person
}
print(greetAgain(person: "Anna"))

// Параметры функции и вохвращаемые значения
// Функции без параметров

func sayHello() -> String{
    return "Hello World"
}
print(sayHello())

// Функции с несколькими параметрами

func greetNew(person: String, already: Bool) -> String{
    if already{
        return greet(person: person)
    } else {
        return greetAgain(person: person)
    }
}
print(greetNew(person: "Fedya", already: false))

// Функции не возвращающие значение

func someFunc(person: String){
    print ("hello," + person)
}

someFunc(person: "Ava")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithCount(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hello")
printWithCount(string: "Hellow")


// Функции возвращающие несколько значений

//func minMax (array:[Int]) -> (min: Int, max: Int){
//    var currentMin = array[0]
//    var currentMax = array[0]
//
//    for value in array[1..<array.count] {
//        if value < currentMin{
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//
//let bounts = minMax(array: [1, 3, -2, 5, 10])
//print("\(bounts.min), \(bounts.max)")


// Опциональный кортеж как возвращаемый тип

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty{return nil}
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        } else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounts = minMax(array: [1]){
    print("\(bounts.min), \(bounts.max)")
}


// Функции с неявным возвращаемым значением
func greetingN (for person: String) -> String{
    "hello, " + person
}

print(greetingN(for: "Ann"))

