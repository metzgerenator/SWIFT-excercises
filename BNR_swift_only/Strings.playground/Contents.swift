//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hellow, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"
for c: Character in mutablePlayground.characters {
    print("\(c)")
}

let coolDude = "\u{1F60E}"


let aAcute = "\u{061}\u{0301}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecompsed = "\u{00E1}"


let fromStart = playground.startIndex
let toPosition  = 4// the first position is 0 
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end] // '0'


