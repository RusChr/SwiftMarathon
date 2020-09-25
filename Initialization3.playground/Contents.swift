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
    
    func test() {}
}


enum Color: Int {
    case black
    case white
    
    init?(value: Int) {
        switch value {
        case 0:
            self = .black
        case 1:
            self = .white
        default:
            return nil
        }
    }
}

let c1 = Color(value: 1)



struct Size {
    var width: Int
    var height: Int
    
    init?(width: Int, height: Int) {
        if width < 0 || height < 0 {
            return nil
        }
        self.width = width
        self.height = height
    }
}

let s1 = Size(width: 3, height: 2)
let s2 = Size(width: 0, height: 0)
let s3 = Size(width: 4, height: -3)



class Friend {
    var name: String
    
    init?(name: String) {
        self.name = name
        if name.isEmpty {
            return nil
        }
    }
}

let f1 = Friend(name: "Alex")
let f2 = Friend(name: "")








































































































