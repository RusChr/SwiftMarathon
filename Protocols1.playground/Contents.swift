//: Playground - noun: a place where people can play

import UIKit


protocol Priority {
    var order: Int { get }
}


protocol EntryName: Priority {
    var label: String { get }
}


class Student: EntryName {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var label: String {
        return fullName
    }
    
    let order = 1
}


class Animal {
    
}


class Cow: Animal, EntryName {
    var name: String?
    
    var label: String {
        return name ?? "just a cow"
    }
    
    let order = 2
}


struct Grass: EntryName {
    var type: String
    
    var label: String {
        return "Grass: " + type
    }
    
    let order = 3
}



let student1 = Student(firstName: "Bob", lastName: "Shmob")
let student2 = Student(firstName: "Bill", lastName: "Shmill")
let student3 = Student(firstName: "Brian", lastName: "Shmian")

let cow1 = Cow()
cow1.name = "Burenka"
let cow2 = Cow()

let grass1 = Grass(type: "Bermuda")
let grass2 = Grass(type: "St. Augustine")


var array: [Any] = [cow1, student1, grass2, cow2, student3, grass1, student2]


for value in array {
    
    if let grass = value as? Grass {
        print(grass.type)
    } else if let student = value as? Student {
        print(student.fullName)
    } else if let cow = value as? Cow {
        print(cow.name ?? "a cow")
    }
    
    switch value {
    case let grass as Grass: print(grass.type)
    case let student as Student: print(student.fullName)
    case let cow as Cow: print(cow.name ?? "a cow")
    default: break
    }
}

print()
print()




var arr: [EntryName] = array as! [EntryName]

func printFarm(array: [EntryName]) {
    for value in array {
        print(value.label)
    }
}

printFarm(array: arr)




























































