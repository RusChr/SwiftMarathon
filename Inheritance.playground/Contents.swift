//: Playground - noun: a place where people can play

import UIKit


class Human {
    var firstName = String()
    var lastName = String()
    var fullName: String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}

let human = Human()
human.firstName = "Alex"
human.lastName = "Skutarenko"
human.fullName
human.sayHello()


class Student: Human {
    override func sayHello() -> String {
        return super.sayHello() + " my friend"
    }
    
    override var fullName: String {
        return lastName
    }
}

let student = Student()
student.firstName = "Student1"
student.lastName = "StudLastName1"
student.fullName
student.sayHello()


class Kid: Human {
    override func sayHello() -> String {
        return "agu"
    }
}

let kid = Kid()
kid.firstName = "Kid1"
kid.lastName = "111"
kid.firstName
kid.lastName
kid.fullName
kid.sayHello()



let array = [kid, student, human]

for value in array {
    print(value.firstName + ": " + value.sayHello())
}




































































