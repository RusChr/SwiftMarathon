//: Playground - noun: a place where people can play

import UIKit


class Human {
    var weight: Int
    var age: Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
}

let h1 = Human(weight: 88, age: 28)
let h2 = Human(age: 25)
let h3 = Human(weight: 80)
let h4 = Human()



class Student: Human {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        self.weight = 50
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "asdf")
        self.weight = 66
        self.age = 22
    }
}



class Doctor: Student {
    var fieldOfStudy: String
    
    init(fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doc1", lastName: "Tor1")
    }
    
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Health"
        super.init(firstName: firstName, lastName: lastName)
    }
}

let d1 = Doctor(firstName: "Doc1")
d1.fieldOfStudy
d1.lastName

let d2 = Doctor(firstName: "Doc2", lastName: "Tor2")
d2.fieldOfStudy

























































