//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



func whatsYourName(userName: String) -> String {
    return "What's up " + userName + "?"
}


print(whatsYourName("Piyush"))


func howMuchLove(theFirstName: String, theOtherName: String) -> String{
    
    let loveScore: UInt32 = arc4random_uniform(101)
    let message: String = "Your score is " + String(loveScore) + "%"
    
    return message
}


howMuchLove("Jack", theOtherName: "Jill")