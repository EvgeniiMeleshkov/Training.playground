import UIKit

var greeting = "Hello, playground"

//_________________________________________________________________
let a = 2
let b: Float = 2.1
let c = 2.9

let sumInt = a + Int(b) + Int(c)
let sumFloat = Float(a) + b + Float(c)
let sumDouble = Double(a) + Double(b) + c


print(sumInt, sumFloat, sumDouble, separator: "   ", terminator: "   ")


if Double(sumFloat) < sumDouble {
    print("Double is accurate")
} else {
    print("Float is accurate")
}


//_________________________________________________________________
let myMaxWorkout = (pushUps: 50, pullUps: 20, sits: 100)

print(myMaxWorkout)
print("my max push ups: \(myMaxWorkout.pushUps); max pull ups: \(myMaxWorkout.1); max sits: \(myMaxWorkout.sits)")


let mashasWorkout = (pushUps: 5, pullUps: 1, sits: 80)


let change = (mashasWorkout.sits, mashasWorkout.pushUps, mashasWorkout.pullUps)


let resultingTuple = (myMaxWorkout.pullUps-mashasWorkout.pullUps, myMaxWorkout.pushUps-mashasWorkout.pushUps, myMaxWorkout.sits-mashasWorkout.sits)
print(resultingTuple)

//_________________________________________________________________
let someText = "Hello!"
let someNumber = "42"
let mix = "number42"
let anotherNumber = "26"
let something = "84"
let num = "100"
42 + 26 + 84 + 100
var stok: [String] = []
stok.append(someText)
stok.append(someNumber)
stok.append(mix)
stok.append(anotherNumber)
stok.append(something)
stok.append(num)

print(stok)

var intStok: [Int] = []
for element in stok {
    if let val = Int(element) {
        intStok += [val]
        print(intStok)
    }
}


var sum = 0
for element in 0...intStok.count - 1 {
   sum += intStok[element]
}
print(sum)


//_________________________________________________________________
let response: (statusCode: Int, message: String?, errorMessage: String?)
response = (350, "OK", "Error!")

if response.statusCode >= 200 && response.statusCode < 300 {
    print(response.message!)
} else {
    print(response.errorMessage!)
}
//_________________________________________________________________
let serverAlert: (okMessage: String?, errorMessage: String?)
serverAlert = (nil, "error")

func serverAnswer (ok: String?, error: String?) {
    if let message = ok {
        print(message)
    }
    if let message = error {
        print(message)
    }
}

serverAnswer(ok: serverAlert.okMessage, error: serverAlert.errorMessage)

//_________________________________________________________________
var student1: (name: String, carNumber: String?, mark: Int?)
var student2: (name: String, carNumber: String?, mark: Int?)
var student3: (name: String, carNumber: String?, mark: Int?)
var student4: (name: String, carNumber: String?, mark: Int?)
var student5: (name: String, carNumber: String?, mark: Int?)


student1.name = "John"
student2.name = "Alex"
student3.name = "Bob"
student4.name = "Rik"
student5.name = "Stan"

student1.carNumber = "F123AA"
student2.carNumber = nil
student3.carNumber = "K345LL"
student4.carNumber = nil
student5.carNumber = "V562NN"

student1.mark = 5
student2.mark = 3
student3.mark = 2
student4.mark = 0
student5.mark = nil




func unWrap (student: (name: String, carNumber: String?, mark: Int?)) {
    print(student.name)
    if let car = student.carNumber {
        print(car)
    }
    if let mark = student.mark {
        print(mark)
    }
}
unWrap(student: student5)

