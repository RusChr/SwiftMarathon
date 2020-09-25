//: Playground - noun: a place where people can play

import UIKit


class Student1 {
    var name = "No name"
    var age = 20
}

let student1 = Student1()
student1.name
student1.age

student1.name = "Alex"
student1.age = 21



class Student2 {
    var name: String?
    var age: Int?
}

let student2 = Student2()
student2.name
student2.age



class Student3 {
    var name = String()
    var age = Int()
}

let student3 = Student3()
student3.name
student3.age



class Student4 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init() {
        name = "No name"
        age = 20
    }
}

let student41 = Student4(name: "Alex", age: 22)
student41.name
student41.age

let student42 = Student4()
student42.name
student42.age

var student43 = student41
student43.name = "Rus"
student43.age = 28

student43.name
student43.age
student41.name
student41.age


// ------------
// ------------


struct StudentStruct1 {
    var name: String
    var age: Int
}

let stStruct1 = StudentStruct1(name: "Bob", age: 22)
stStruct1.name
stStruct1.age
//stStruct1.name = "Sam"
//stStruct1.age = 24

var stStruct2 = StudentStruct1(name: "", age: 0)
stStruct2.name = "Sam"
stStruct2.age = 24

var stStruct3 = stStruct2
stStruct3.name
stStruct3.age

stStruct3.age = 30
stStruct3.age
stStruct2.age



















































