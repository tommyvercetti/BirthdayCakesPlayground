import UIKit

var myAge = 14
var yourAge = myAge
print("I'm \(myAge) years old, and you're \(yourAge) years old" )
yourAge = 15
print("Now I'm \(myAge) years old, and you're \(yourAge) years old")

class Kid {
	var age:Int
	
	init (age:Int) {
		self.age = age
	}
	
	
}
	//	init(age:Int) {
//		self.age = age
//	}

var finn = Kid(age: 9)
var nathan = finn
print("Nathan - \(nathan.age) years old, and Finn - \(finn.age) years old")

nathan.age = 10
print("now nathan \(nathan.age) yo, and finn also \(finn.age) yo")


struct Couch {
	var numberOfCoushions = 3
	func description() -> String {
		return "this couche have \(numberOfCoushions) of cushions"
	}
	
}

var myFirstCouch = Couch ()
var mySecondCouch = myFirstCouch
myFirstCouch.description()
mySecondCouch.description()
mySecondCouch.numberOfCoushions = 4
myFirstCouch.description()
mySecondCouch.description()
