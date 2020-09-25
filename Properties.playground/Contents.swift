//: Playground - noun: a place where people can play

import UIKit


struct Student1 {
    var firstName: String {
        willSet(newFirstName) {
            print("will set \(newFirstName) insted of \(firstName)")
        }
        didSet(oldFirstName) {
            print("did set \(firstName) insted of \(oldFirstName)")
            firstName = firstName.capitalized
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        //return firstName + " " + lastName // default: get
        get {
            return firstName + " " + lastName
        }
        
        set {
            print("fullName wants to be set to " + newValue)
            if newValue.contains(" ") {
                firstName = newValue.components(separatedBy: " ").first!.capitalized
                lastName = newValue.components(separatedBy: " ").last!.capitalized
            }
        }
    }
}

var st1 = Student1(firstName: "Alex", lastName: "Skutarenko")
st1.firstName
st1.firstName = "Bob"
st1.fullName
st1.fullName = "john skutarenko"
st1.fullName
st1.firstName
st1.lastName

st1.firstName = "sam"
st1.firstName
st1.fullName

























































