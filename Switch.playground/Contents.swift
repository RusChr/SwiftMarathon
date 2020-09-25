//: Playground - noun: a place where people can play

import UIKit


let age = 67
let name = "Alex"

switch age {
case 0...16:
    print("shokolo")
    fallthrough
case 17...21:
    print("student")
default:
    break
}



let tuple = (name, age)

switch tuple {
case ("Alex", 60):
    print("hi Alex 60")
case (_, let number) where number >= 65 && number <= 70:
    print("hi old man")
case ("Alex", _):
    print("hi Alex")
default:
    break
}



let point = (5, 5)

switch point {
case let (x, y) where x == y:
    print("x == y")
case let (x, y) where x == -y:
    print("x == -y")
case let (_, y) where y < 0:
    print("y < 0")
default:
    break
}



let array: [CustomStringConvertible] = [5, 5.4, Float(3.9)]

switch array[0] {
case _ as Int:
    print("Int")
case let a as Float:
    print("Float")
case _ as Double:
    print("Double")
default:
    break
}

















