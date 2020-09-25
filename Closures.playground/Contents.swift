//: Playground - noun: a place where people can play

import UIKit


let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10]

func filterArray(array: [Int], byFunc f: (Int) -> Bool) -> [Int] {
    var filtered = [Int]()
    for value in array {
        if f(value) {
            filtered.append(value)
        }
    }
    return filtered
}


func compare(i: Int) -> Bool {
    return i % 2 == 0
}

func compare2(i: Int) -> Bool {
    return i % 2 == 1
}

filterArray(array: numbers, byFunc: compare)
filterArray(array: numbers, byFunc: compare2)

// --------------

filterArray(array: numbers, byFunc: {(i: Int) -> Bool in
    return i % 2 == 0
})
filterArray(array: numbers, byFunc: {(i: Int) -> Bool in
    return i % 2 == 1
})
filterArray(array: numbers, byFunc: {(i: Int) -> Bool in
    return i % 3 == 0
})
filterArray(array: numbers, byFunc: {(i: Int) -> Bool in
    return i < 10
})

// --------------

filterArray(array: numbers, byFunc: {i in
    return i % 2 == 0
})

var foo1 = filterArray(array: numbers, byFunc: { i in i < 10 })
print(foo1)

var foo2 = filterArray(array: numbers, byFunc: { $0 % 3 == 0 })
print(foo2)

var foo3 = filterArray(array: numbers) { $0 % 3 == 0 }
print(foo3)

// --------------

let testArray = [1, 2, 3, 4, 5]

var foo4 = filterArray(array: numbers) { value in
    for include in testArray {
        if include == value {
            return true
        }
    }
    return false
}
print(foo4)

// --------------

var dict = [Int: Bool]()

for value in testArray {
    dict[value] = true
}
//dict[56]

var foo5 = filterArray(array: numbers) { dict[$0] != nil }
print(foo5)










































