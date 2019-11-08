//Intro to collections

var todo: [String] = ["Vacuum", "Make lunch", "Make Git repo for swift"]

// adding items to an array

todo.append("Feed Dogs")

todo + ["Laundry"] // does not mutate list

todo += ["Bake Bread"] // mutates list

// Immutable array
let secondTaskList: [String] = ["Only task allowed"]

//secondTaskList.append(contentsOf: "throws an error")
//secondTaskList += ["Also throws an error"]

//Reading from Arrays

todo[0] // subscripting

// mutating an array

todo[3] = "Clean sink"

// Insert using indexes

todo.insert("Watch TV", at: 3)

// Removing items from array
todo.count

todo.remove(at: 1)

todo.count


//Dictionaries

var games: [String: String] = [
    "EFT": "Escape From Tarkov",
    "WF": "Warframe",
    "D2": "Diablo 2",
    "RD2": "Red Dead Redemption 2"
]

//Reading from a dictionary

games["RD2"]

//adding a k:v

games["MW"] = "Modern War fare"

//updating value
games.updateValue("Modern Warfare", forKey: "MW")

//Removing

games["MW"] = nil

games.removeValue(forKey: "WF")

games


