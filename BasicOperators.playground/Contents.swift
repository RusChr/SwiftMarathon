//: Playground - noun: a place where people can play

import UIKit


let oct = 0o377

let hex = 0xff

let bin = 0b1111_1111

let int = 255


let div = 10 / 3

let rest = 10 % 3


var small: UInt8 = 0o377

//small = small + 5 //Error

//&+ &* &/ &- &%
small = small &+ 5


let text = "123"

var c: Int

let n = Int(text)

print(n) //Optional(123)

/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/

/*
if let opt = n {
    c = opt
    print(c) //123
} else {
    c = 0
}
*/

c = n ?? 0


























