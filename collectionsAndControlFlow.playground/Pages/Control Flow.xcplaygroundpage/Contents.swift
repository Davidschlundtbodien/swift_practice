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
