//: Playground - noun: a place where people can play

import UIKit


let MaxNameLength = 20


class Human {
    var name: String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my life..."
    let maxAge = 100                //!!!
    
    var age: Int {
        didSet {
            if age > maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


struct Cat {
    var name: String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    static let maxAge = 20          //!!!
    static var totalCats = 0
    
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats += 1
    }
}


let human = Human(name: "Peter", age: 40)
human                   //storyOfMyLife = nil
human.storyOfMyLife
human                   //storyOfMyLife = "This a story..."

var cat = Cat(name: "Whiten", age: 10)
Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 10)
Cat.totalCats


enum Direction {
    static let enumDescription = "Direction in the game"
    
    case right
    case left
    case top
    case bottom
    
    var isVertical: Bool {
        return self == .top || self == .bottom
    }
    
    var isHorizontal: Bool {
        return !isVertical
    }
}

Direction.enumDescription

let d = Direction.right
d.isVertical
d.isHorizontal



























































