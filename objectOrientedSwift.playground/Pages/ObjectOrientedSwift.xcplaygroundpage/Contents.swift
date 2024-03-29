// Structs

struct Point {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    ///Returns surronding points of current point
    func points(inRange range:Int = 1) -> [Point] {
        var results: [Point] = []
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}

let p1 = Point(x: 0, y: 0)

p1.points()


// classes

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}

///Inherits Enemy superclass
class StrongEnemy: Enemy {
    
    let  isStrong:Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 10
    }
    
}

//Tower

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    
    init(x:Int, y:Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Hit")
        }   else {
            print("miss")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        return false
    }
}

///Inherits from tower superclass
class BigOlTower: Tower {
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 10
        self.strength = 5
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        print("Enemy destroyed!")
    }
}


let tower = Tower(x: 1, y: 1)

let enemy = Enemy(x: 0, y: 0)

let boss = StrongEnemy(x: 1, y: 2)

tower.fire(at: enemy)

tower.fire(at: boss)

boss.life


