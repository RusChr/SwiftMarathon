//: Playground - noun: a place where people can play

import UIKit


struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

//p1 + p2


func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

print(p1 + p2)
print(p1)
print(p2)



































































































































