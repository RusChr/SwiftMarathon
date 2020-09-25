//: Playground - noun: a place where people can play

import UIKit


enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn
}


var action = Action.Run(meters: 20, speed: 15.0)
action = .Stop
action = .Walk(meters: 110)
action = .Run(meters: 100, speed: 20)


switch action {
case .Stop:
    print("Stop")
case .Walk(let m) where m < 100:
    print("short walk")
case .Walk:
    print("long walk")
case .Run(let m, let s):
    print("run \(m) meters with speed \(s)")
default:
    break
}












































































