//import UIKit
//
//var str = "Hello, playground"
//
//

class BirthdayCake {
	let birthdayAge: Int
	let birthdayName: String
	var feeds = 20
	
	init() {
		birthdayAge = 6
		birthdayName = "Robin"
		print("\(birthdayName), your cake is ready")
	}
	init(age:Int, name:String) {
		birthdayAge = age
		birthdayName = name
		print("\(birthdayName), your cake is ready")
	}
	func message (shouldIncludeAge: Bool) -> String {
		if shouldIncludeAge {
			return "Happy Birthday, \(birthdayName), you're now \(rightYear())"
		}
		return "Happy Birthday, \(birthdayName)"
	}
	
	func rightYear() -> String {
		var year = "лет"
		let remainder = birthdayAge % 10
		switch remainder {
		case 1:
			if birthdayAge != 11 {
				year = "год"
			}
		case 2,3,4:
			if birthdayAge != 12 && birthdayAge != 13 && birthdayAge != 4  {
				year = "года"
			}
		default:
			break
		}
		return "\(birthdayAge) " + year
		
	}
	
}



let myCake = BirthdayCake()

let age = myCake.birthdayAge
print("my cake needs \(age) candles")
print("on cake will be such title - Happy Birthday, \(myCake.birthdayName)")

print("cake is for \(myCake.feeds) people")
myCake.feeds = 10
print("but I think only for \(myCake.feeds) people")


let twinsCake = BirthdayCake (age: 10, name: "Kolin & Brenna")

let brownieCake = BirthdayCake(age: 11, name: "Grathem")

print(brownieCake.message(shouldIncludeAge: true))

print("************************************************************")

class RocketShip {
	var destination: String
	init(destination: String) {
		self.destination = destination
	}
//	init(someDestination: String) {
//		destination = someDestination
//	}
}
let myRocketShip = RocketShip (destination: "Moon")

print (myRocketShip.destination)

print("************************************************************")


class FarmAnimal{
	var name = "farm pet"
	var numberOfLegs = 4
	func sayHello() -> String {
		return "Helo i'm a farm pet"
	}
	func description() {
		print("I'm \(name), and I have \(numberOfLegs) legs")
	}
}

class Sheep: FarmAnimal{
	override init() {
		super.init()
		name = "🐑 sheep"
	}
	override func sayHello() -> String {
		return "🐑be-🐑be-🐑be"
	}
	override func description() {
		super.description()
		print("you can create a blanket from my wool")
	}
	
}

let aSheep = Sheep()
aSheep.sayHello()
aSheep.description()

class Pig: FarmAnimal{
	var weightOfPig = 50
	
	override init() {
		super.init()
		name = "🐷 piglet"
		numberOfLegs = 4
	}
	
	override func sayHello() -> String {
		return "🐷oink-🐷oink"
	}
	
	override func description() {
		super.description()
		print("I'm making a 🥩 salo")
		
		if weightOfPig > 100 {
			print("i'm ready to give you a 🥩 salo")
		} else if weightOfPig <= 100{
			print("not enough salo, 🌽 feed me more")
		}
	}
	
	func feedPigForSalo() {
		weightOfPig += 10
	}
	
	func makeSalo() -> Double {
		var salo:Double = Double (weightOfPig) * 0.25
		print("weight of pig now is - \(Double (weightOfPig)-salo), now i can make \(salo) kg of salo")
		return salo
	}
	
}

class Chiken: FarmAnimal {
	var numberOfEggs = 0
	override init() {
		super.init()
		name = "🐔 chiken"
		numberOfLegs = 2
	}
	override func sayHello() -> String {
		return "🐔ko-🐔ko-🐔ko"
	}
	override func description() {
		super.description()
		print("I'm making 🥚 eggs")
		
		if numberOfEggs == 1 {
			print("I have one 🥚 egg for you")
		} else if numberOfEggs > 0 {
			print("I have \(numberOfEggs) 🥚 eggs for you")
		}
	}
	func layAnEgg() {
		numberOfEggs += 1
	}
	func giveUpEggs() -> Int {
		let eggs = numberOfEggs
		numberOfEggs = 0
		return eggs
	}
}

let chiken1 = Chiken()
chiken1.layAnEgg()

let chiken2 = Chiken()
chiken2.layAnEgg()
chiken2.layAnEgg()

let pig1 = Pig()
while pig1.weightOfPig < 150{
	pig1.feedPigForSalo()
}

let pig2 = Pig()
while pig2.weightOfPig < 100{
	pig2.feedPigForSalo()
}


let animals = [Sheep(), chiken1, chiken2, Sheep(), Chiken(), Sheep(), Pig(), pig1, pig2]

for animal in animals {
	
	if animal is Sheep{
		print("that's how my sheep talks: \(animal.sayHello())")
		
	}else if animal is Chiken{
		print("that's how my chiken talks: \(animal.sayHello())")
		let chiken = animal as! Chiken
		chiken.layAnEgg()
		chiken.description()
		
	}else if animal is Pig{
		print("that's how my pig talks: \(animal.sayHello())")
	}
}

//gathering
var gatheredEggs = 0
var gatheredSalo:Double = 0.00

for animal in animals {
	if let chiken = animal as? Chiken {
		chiken.layAnEgg()
		print("need to gather \(chiken.numberOfEggs) eggs")
		gatheredEggs += chiken.giveUpEggs()
		
	} else if let pig = animal as? Pig {
		
		if pig.weightOfPig < 100 {
			print("not enough weight of \(pig.name), need to feed more")
			while pig.weightOfPig < 110 {
				pig.feedPigForSalo()
				print("feeding \(pig.name)...")
			}
			
			}
		gatheredSalo += pig.makeSalo()
		
	
	}
}
print("today I gather \(gatheredEggs) eggs")
print("today I gather \(gatheredSalo) kgs of salo")







