func area(length: Int, width: Int) -> Int {
    let result = length * width
    return result
}


let roomOne = area(length: 10, width: 30)

let roomTwo = area(length: 30, width: 30)


//Void return type

func someVoid() {
    
}

func anotherVoid() -> () {
    
}

func yetAnotherVoid() -> Void {
    
}


//Function naming conventions

func areaWith(length: Int, width: Int) -> Int {
    return(width * length)
}

// Argument labels (extenal local)

func remove(havingValue value: String) -> () {
    print(value)
}

remove(havingValue: "A")

// Default Values and Tuples

func carpetCostHaving( length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, carpetColor: String) {
    
    let areaOfRoom =  area(length: length, width: width)
    
    var price = 0
    
    switch color {
    case "gray":
        price = areaOfRoom * 1
    case "tan":
        price = areaOfRoom * 2
    case "blue":
        price = areaOfRoom * 4
    default:
        price = 0
    }
    return (price, color)
}


let roomOneCarpet = carpetCostHaving(length: 20, width: 20)



