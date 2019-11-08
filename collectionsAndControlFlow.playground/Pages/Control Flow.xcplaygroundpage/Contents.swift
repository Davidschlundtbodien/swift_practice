var todo: [String] = ["Go to Costco", "Bake Bread", "Water Garden", "Push Code", "Resume Swift Practice"]

//for in loop
for task in todo {
    print(task)
}

//Ranges

//Closed range Operator
//a...b

//Half open range Operator
//1..<5

for number in 1...10 {
    print("\(number) times 5 is equal to \(number * 5)")
}


// While conditional loop

var x = 0

while x < 10 {
    print(x)
    x += 1
}

var index = 0

while index < todo.count {
    print(todo[index])
    index += 1
}


//Repeat while
var counter = 1

while counter < 1 {
    print("This wont print")
    counter += 1
}


repeat {
    print("This will print")
} while counter < 1


// If statement

var temperatureF = 70

if temperatureF < 20 {
    print("It might be snowing")
} else if temperatureF < 60 {
    print("Wear a jacket")
} else {
    print("Its nice outside")
}

// Logical operator

if temperatureF > 60 && temperatureF < 90 {
    print("Its a great day")
}

var isRaining = true
var isSnowing = false

if isRaining || isSnowing {
    print("The weather is terrible!")
}

if !isSnowing {
    print("No snow day!")
}

if (isSnowing || isRaining) && temperatureF < 30 {
    print("Just don't go outside today")
}

//Switch statement

var gameCodes = ["RD2", "EFT", "D&D", "DnD"]

switch gameCodes[0] {
case "RD2":
    print("Red Dead Redemption 2")
case "EFT":
    print("Escape From Tarkov")
case "D&D":
    print("Dungeons & Dragons")
default:
    print("Game unkown")
}


for code in gameCodes {
    switch code {
    case "RD2":
        print("Red Dead Redemption 2")
    case "EFT":
        print("Escape From Tarkov")
    case "D&D", "DnD":
        print("Dungeons & Dragons")
    default:
        print("Game unkown")
    }
}
