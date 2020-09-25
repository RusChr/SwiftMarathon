//: Playground - noun: a place where people can play

import UIKit


struct Point {
    var x: Int
    var y: Int
    
    mutating func move(byX x: Int, andY y: Int) {
        self.x += x
        self.y += y
    }
}


func move(point p: Point, byX x: Int, andY y: Int) -> Point {
    var point = p
    point.x += x
    point.y += y

    return point
}


var p1 = Point(x: 1, y: 1)

p1 = move(point: p1, byX: 2, andY: 4)
p1.move(byX: 4, andY: 2)


enum Color {
    case white
    case black
    
    mutating func invertColor() -> Color {
        self = self == .white ? .black : .white
        return self
    }
}

var c = Color.white
c.invertColor()
c.invertColor()































































