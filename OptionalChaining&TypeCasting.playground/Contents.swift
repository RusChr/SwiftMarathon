//: Playground - noun: a place where people can play

import UIKit


class Address {
    var street = "Deribasovskaya"
    var number = "1"
    var city = "Odessa"
    var country = "Ukraine"
}


struct Garage {
    var size = 2
}


class House {
    var rooms = 1
    var address = Address()
    var garage: Garage? = Garage()
}


class Car {
    var model = "Zaporojec"
    
    func start() {}
}


class Person {
    var cars: [Car]? = [Car()]
    var house: House? = House()
}


let p1 = Person()
p1.cars![0]
p1.house!


p1.house!.garage!.size


if let house = p1.house {
    if let garage = house.garage {
        print(garage.size)
    }
}


p1.house?.garage?.size  //optional Int


print(p1.house?.garage?.size = 3)


if (p1.house?.garage?.size = 3) != nil {
    print("upgrade")
} else {
    print("failure")
}


if let size = p1.house?.garage?.size {
    print(size)
}


print(p1.cars?[0].model)


if p1.cars?[0].start() != nil {
    print("start!")
} else {
    print("failure!")
}


////////////// Type Casting ///////////////


class Symbol {
    
}


class A: Symbol {
    func aa() {
        print("aa")
    }
}


class B: Symbol {
    func bb() {
        print("bb")
    }
}


let array: [Symbol] = [A(), B(), Symbol(), A(), A(), B()]

var aCount = 0
var bCount = 0
var sCount = 0

for value in array {
    if value is A {
        aCount += 1
    } else if value is B {
        bCount += 1
    } else {
        sCount += 1
    }
    
    if let a = value as? A {
        a.aa()
    } else if let b = value as? B {
        b.bb()
    }
}

aCount
bCount
sCount




































































