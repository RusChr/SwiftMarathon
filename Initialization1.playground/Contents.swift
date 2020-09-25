//: Playground - noun: a place where people can play

import UIKit


class Student1 {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
    }
}


class Student2 {
    var firstName = ""
    var lastName = ""
}


class Student3 {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}



struct Student4 {
    var firstName: String
    var lastName: String
}


struct Student5 {
    var firstName = String()
    var lastName = String()
}


let s1 = Student1()
let s2 = Student2()
let s3 = Student3(firstName: "", lastName: "")

let s4 = Student4(firstName: "", lastName: "")
let s5 = Student5()
let s5_1 = Student5(firstName: "", lastName: "")


//////////////////////////////////



class Human {
    var weight: Int
    var age: Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    
//    init(age: Int) {
//        self.age = age
//        self.weight = 0
//    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init() {
        self.init(weight: 0, age: 0)
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
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "asdf")
        self.weight = 66
        self.age = 22
    }
}

let t1 = Student(firstName: "Alex", lastName: "Skutarenko")
t1.firstName
t1.age = 24
t1.age

let t2 = Student(firstName: "Bob")
t2.firstName
t2.lastName
t2.weight






























































