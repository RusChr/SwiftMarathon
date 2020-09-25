//: Playground - noun: a place where people can play

import UIKit


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case even
        case odd
    }
    
    var evenOrOdd: EvenOrOdd {
        return isEven ? .even : .odd
    }
    
    func pow(_ value: Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(_ value: Int) {
        self = pow(value)
    }
    
    var binaryString: String {
        var result = ""
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        return result
    }
}


extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
    }
}


var a = 5

if a % 2 == 0 {
    print("4etnoe")
} else {
    print("ne4etnoe")
}


if a.isEven {
    print("4etnoe")
}

if a.isOdd {
    print("ne4etnoe")
}


a.evenOrOdd



extension Int.EvenOrOdd {
    var string: String {
        switch self {
        case .even: return "even"
        case .odd: return "odd"
        }
    }
}


a.evenOrOdd.string


a.pow(2)
a

a.powTo(4)
a


a = 255
a.binaryString


let s = "Hello, World!"
let start = s.startIndex
let end = s.index(start, offsetBy: 5)
let range = start..<end
s[range]



extension String {
    subscript(start: Int, length: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: start)
        let end = self.index(start, offsetBy: length)
        let range = start..<end
        
        return self[range]
    }
}

s[0, 1]
s[0, 2]

























































