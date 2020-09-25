//: Playground - noun: a place where people can play

import UIKit


struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

//print(p1 + p2)


func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

print(p1 + p2)


func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

print(p1 * p2)


func += (a: inout Point, b: Point) {
    a = a + b
}

p1 += p2
print(p1)


//p1 == p2

func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}

p1 == p2
p1 == p1


prefix func ++ (a: inout Point) -> Point {
    a.x += 1
    a.y += 1
    return a
}

++p1


postfix func ++ (a: inout Point) -> Point {
    let b = a
    ++a
    return b
}

p1++
print(p1)



var c1 = Point(x: 1, y: 2)
var c2 = Point(x: 3, y: 4)

infix operator <=> {}

func <=> (a: inout Point, b: inout Point) {
    let t = a
    a = b
    b = t
}

c1 <=> c2

print(c1)
print(c2)





func -= (s1: inout String, s2: String) {
    let charSet = s2.characters
    
    for char in charSet {
        while s1.characters.contains(char) {
            s1.characters.remove(at: s1.characters.index(of: char)!)
        }
    }
}

var str = "Hello, World"

str -= "eo"
print(str)
































