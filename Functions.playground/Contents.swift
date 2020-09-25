//: Playground - noun: a place where people can play

import UIKit


func calcMoney(inWallet wallet: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
    var sum = 0
    var count = 0
    
    for value in wallet {
        if (type == nil) || (value == type!) {
            sum += value
            count += 1
        }
    }
    
    return (sum, count)
}


let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

let (money, count) = calcMoney(inWallet: wallet, withType: 5)
money
count

let (mon, cnt) = calcMoney(inWallet: wallet)
mon
cnt

calcMoney(inWallet: wallet).count
calcMoney(inWallet: wallet, withType: 20).total



func calcMoney(inSequence seq: Int...) -> Int {
    var sum = 0
    for value in seq {
        sum += value
    }
    
    return sum
}

calcMoney(inSequence: 5, 2, 4, 1, 3, 1, 5, 10)



func sayHi() {
    print("hi")
}

let hi = sayHi
hi


func sayPhrase(phrase: String) -> Int? {
    print(phrase)
    return 0
}

let phrase: (String) -> (Int?) = sayPhrase(phrase:)

phrase("bbb")



func doSomething(whatToDo: () -> ()) {
    whatToDo()
}

doSomething(whatToDo: hi)



func whatToDo() -> () -> () {
    func printSth() {
        print("hello world")
    }
    
    return printSth
}

whatToDo()()

let iShouldDoThis = whatToDo()
iShouldDoThis()




func fact1(_ number: Int) -> Int {
    var result = 1
    
    if number > 1 {
        for i in 1...number {
            result *= i
        }
    } else {
        return 1
    }
    
    return result
}

fact1(1)
fact1(5)


func fact2(_ number: Int) -> Int {
    return number > 1 ? number * fact2(number - 1) : 1
}

fact2(1)
fact2(5)
fact2(20)
































