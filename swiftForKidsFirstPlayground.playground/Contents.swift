import UIKit
import Foundation

var nationalParks: [String] = ["arcadia", "mezhygirya", "sofiya"]
print(nationalParks)

print("firs time i was at - \(nationalParks[2]), then i visit - \(nationalParks[0]), and only then - \(nationalParks[1])")
//print("then i visit - \(nationalParks[0])")
//print("and only then - \(nationalParks[1])")
nationalParks.insert("Slavske", at: 0)
print("today I'm going to visit - \(nationalParks[0])")
print(nationalParks)

let fruits = ["banana", "pineapple", "dragonfruit"]
let liquids = ["honey", "youghurt", "ice"]

var smoothie = fruits + liquids

smoothie += ["vershky"]

print(smoothie)

var forCacke = ["flour"]

smoothie.removeLast()


print(forCacke)
print(smoothie)


let myCousines = ["first", "second", "third"]
if myCousines.isEmpty {
	print("i don't have cousines")
} else {
	print("i have \(myCousines.count) cousines")
}



let pizzaTopings = ["cheese", "mushrooms", "sausages", "olives", "anchous"]

for topping in pizzaTopings {
	print(topping)
}



let arrayOfNumbers = [1,2,4,6,8,13,48]
print("here's the array of numbers")

print("here's the square of numbers")

for number in arrayOfNumbers {
	print("square of number \(number) is equal = \(number*number)")
}



var countries = ["IT":"Italia", "PL":"Poland", "UA":"Ukraine", "SP":"Spain"]





if let biggestCountry = countries ["UA"] {
	print("country \(biggestCountry) is in my dictionary")
} else {
	print("this country isn't in my dictionary")
}
if let smallestCountry = countries ["VA"] {
	print("country \(smallestCountry) is in my dictionary")
} else {
	print("this country isn't in my dictionary")
}

countries ["AU"] = "Austria"

countries

countries ["IT"] = nil
countries

var colourFruits = ["red": "apple", "yellow": "banana"]
colourFruits ["red"] = "dragon fruit"
colourFruits


let fruitBasket = ["apple":"0.5", "orange":"1.00", "banana":"0.75"]
if fruitBasket.isEmpty {
	print("i have no fruits to sell")
} else {
	print("i have \(fruitBasket.count) to sell")
}

for fruit in fruitBasket.keys {
	print("One \(fruit) will cost \(fruitBasket[fruit]!)")
}

for price in fruitBasket.values {
	print("i have a fruit that will cost \(price)\n")
}



print("*********************************************")





func invite (guest:String){
	print("Привет, \(guest),")
	print("Хочу пригласить тебя на мою вечеринку!")
	print("Она состоится в субботу у меня дома.")
	print("Надеюсь, ты сможешь прийти.")
	print("С любовью, Andrian\n")
}

invite(guest: "Masha")



let arrayOfFriends = ["Mama", "Papa", "Masha", "Artem", "Valik", "Igor"]

func priglosofFriends (guest: [String]){
	for guest in arrayOfFriends {
		print("Привет, \(guest),")
		print("Хочу пригласить тебя на мою вечеринку!")
		print("Она состоится в субботу у меня дома.")
		print("Надеюсь, ты сможешь прийти.")
		print("С любовью, Andrian\n")
	}
}

priglosofFriends(guest: arrayOfFriends)

//*************

func sendMessage (guest: String, rsvped: Bool ){
	print("hello \(guest),")
	if rsvped{
		print("will wait you on weekend!")
	} else {
		print("hope you will come")
	}
	print("don't forget to get swim costume")
}

sendMessage(guest: "Julia", rsvped: true)
sendMessage(guest: "Asher", rsvped: false)

//*************

func sayThankYou (to guest: String, for gift: String){
	print("hello, \(guest)")
	print("thanks for comming to party and for \(gift)")
	print("it was great to meet you")
	print("with love Andrian")
}

sayThankYou(to: "Sarah", for: "book")



//func volumeOfBoxWithSides (_ side1: Int, _ side2: Int, _ side3: Int){
//	print("volume of this box - \(side1*side2*side3)")
//}
//
//volumeOfBoxWithSides(3, 4, 5)


func volumeOfBox(_ side1: Int, _ side2: Int, _ side3: Int) -> Int {
	let volume = side1 * side2 * side3
	return volume
}

let volumeOfBox1 = volumeOfBox(1, 2, 3)
let volumeOfBox2 = volumeOfBox(45, 1, 2)

if volumeOfBox1 > volumeOfBox2 {
	print("box1 is larger than box2")
} else if volumeOfBox1 < volumeOfBox2{
	print("box2 is larger than box1")
} else {
	print("boxes have equal volume")
}

func averageOf (_ scores:[Int]) -> Int  {
	var sum = 0
	for score in scores {
		sum += score
	}
	if scores.count > 0 {
		return sum/scores.count
	} else {
		return 0
	}
}

print (averageOf([32,23,43,53,52,51,32,23,34,45,55]))




print("************************************************************")

let today = Date ()
print (today)

let formatter = DateFormatter ()
formatter.dateStyle = DateFormatter.Style.short
print (formatter.string(from: today))

