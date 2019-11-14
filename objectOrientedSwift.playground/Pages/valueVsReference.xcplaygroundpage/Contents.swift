struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Randy Lahey", email: "lahey@gmail.com", age: 33)

var anotherUser = someUser

someUser.email = "randy@gmail.com"

//does not transfer from someUser
anotherUser


class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
    
}

var somePerson = Person(name: "Corey Trevor", email: "ct@gmail.com", age: 22)

var anotherPerson = somePerson

somePerson.email = "trevster@gmail.com"

// does transfer from somePerson
anotherPerson
