//: Playground - noun: a place where people can play

import UIKit


let array = ["a", "b", "c"]
array[0]
array[2]


struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["Kid1", "Kid2", "Kid3"]
    
    var count: Int {
        return 2 + kids.count
    }
    
    subscript(index: Int) -> String? {
        get {
            switch(index) {
            case 0: return father
            case 1: return mother
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
            }
        }
        
        set {
            let value = newValue ?? ""
            switch(index) {
            case 0: father = value
            case 1: mother = value
            case 2..<(2 + kids.count): kids[index - 2] = value
            default: break
            }
        }
    }
    
    subscript(index: Int, suffix: String) -> String? {
        var name = self[index] ?? ""
        name += " " + suffix
        
        return name
    }
}


var family = Family()
family.father
family.kids
family.count

family[0]
family[1]
family[2]
family[4]
family[10]

family[0] = "Daddy"
family.father
family[3] = "Buddy"
family.kids

family[3, "the great"]!
family[3]



struct Field {
    var dict = [String: String]()
    
    func keyFor(column col: String, andRow row: Int) -> String {
        return col + String(row)
    }
    
    subscript(column: String, row: Int) -> String? {
        get {
            return dict[keyFor(column: column, andRow: row)]
        }
        set {
            dict[keyFor(column: column, andRow: row)] = newValue
        }
    }
}


var field = Field()
field["a", 5]
field["a", 5] = "X"
field["a", 5]






















































