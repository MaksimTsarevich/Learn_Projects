// Строковые литералы
let someString = "Some stirng literal value"

//  Специальные символы в строковых лиетралах
let wiseWords = "\"Blablabla\" - Eisads"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

// Расширенные разделители строк
let threeMoreDouble = #"""
here are three more double: """
gfsdfds
dfsdffds
"""#
print(threeMoreDouble)

// Инициализация пустых строк
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("String is empty")
}

// Изменчивость строк
var variableString = "Horse"
variableString += " Hello"

// Работа с символами
for character in "Dog!" {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacter: [Character] = ["c", "a", "t", "s", "!"]
let catString = String(catCharacter)
print(catString)

// Конкатенация строк и символов
let string1 = "Hello"
let string2 = " World"
var welcome = string1 + string2
welcome += " ,i am Maks"

welcome.append(exclamationMark)

// Интерполяция строк
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

// Подсчет символов
let unusualMenagerie = "Car, Dog, Chiken, Muha"

print("unusualMenagerie: \(unusualMenagerie.count) symbols")

// Индексы строки
let greeting = "Guten Tag!"
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.startIndex]
greeting[greeting.index(greeting.startIndex, offsetBy: 7)]

for index in greeting.indices {
    print("\(greeting[index])", terminator: " ")
}

// Добавление и удаление
 var welcomeString = "hello"
welcomeString.insert("!", at: welcomeString.endIndex)

welcomeString.insert(contentsOf: " Three", at: welcomeString.index(before: welcomeString.endIndex))

welcomeString.remove(at: welcomeString.index(before: welcomeString.endIndex))
welcomeString

let range = welcomeString.index(welcomeString.endIndex, offsetBy: -6) ..< welcomeString.endIndex
welcomeString.removeSubrange(range)
welcomeString

// Подстроки

let greetin = "Hello, world"
let index = greetin.firstIndex(of: ",") ?? greetin.endIndex
let begginning = greetin[..<index]
let newString = String(begginning)

// Сравнение строк

let quatation = "hello, my name is"
let newQuatation = "hello, my name is"

if quatation == newQuatation{
    print("\nString uqual")
}

// Равенство префиксов и суффиксов
let romeoAndJuliet = [
"Act 1 Scene 1: Grodno",
"Act 1 Scene 2: Minsk",
"Act 1 Scene 3: Mogilev",
"Act 1 Scene 4: Brest",
"Act 2 Scene 1: Minsk"
]

var act1SceneCount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("All scene in act 1 is: \(act1SceneCount)")


var grodnoCount = 0
var minskCount = 0

for scene in romeoAndJuliet{
    if scene.hasSuffix("Minsk"){
        minskCount += 1
    } else if scene.hasSuffix("Grodno"){
        grodnoCount += 1
    }
}

print("Scene in place Grodno: \(grodnoCount), and scene in place Minsk: \(minskCount)")





