// Chapter 14 컬렉션

import UIKit

let stringArray = ["Apple", "Orange", "Banana"]

let stringNSArray: NSArray = ["Apple", "Orange", "Banana"]

let stringArray2 = Array(["Apple", "Orange", "Banana"])
let stringNSArray2 = NSArray(objects: "Apple", "Orange", "Banana")

let emptyArray1: NSMutableArray = []
let emptyArray2 = NSMutableArray()

var emptyStringArray1: Array<String> = []
var emptyStringArray2 = Array<String>()
var emptyStringArray3: [String] = []
var emptyStringArray4 = [String]()

// var emptyArray3 = []  // Error

let fruits = ["Apple", "Orange", "Banana"]
let countOfFruits = fruits.count

if !fruits.isEmpty {
    print("\(countOfFruits) element(s)")
} else {
    print("empty array")
}

let fruits2: NSArray = ["Apple", "Orange", "Banana"]
let first = fruits2.object(at: 0)
let last = fruits2.object(at: fruits2.count - 1)
print(first)
print(last)

let fruits3: NSArray = ["Apple", "Orange", "Banana"]
let first2 = fruits3[0]
let last2 = fruits3[fruits3.count - 1]

let fruits4: NSArray = ["Apple", "Orange", "Banana"]
let index = 100
if index >= 0 && index < fruits4.count {
    print(fruits4[index])
} else {
    print("Out of bounds")
}

let fruits5 = ["Apple", "Orange", "Banana"]
let index2 = 100
if index2 >= fruits5.startIndex && index2 < fruits5.endIndex {
    print(fruits5[fruits5.startIndex.advanced(by: index2)])
} else {
    print("Out of bounds")
}

let fruits6 = ["Apple", "Orange", "Banana"]
if let first = fruits6.first {
    // ...
}
if let last = fruits6.last {
    // ...
}

let alphabet: NSArray = ["A", "B", "C", "D", "E"]
if alphabet.contains("A") {
    print("contains A")
}

let alphabet2: NSArray = ["A", "B", "C", "D", "E"]
let index3 = alphabet2.index(of: "C")
if index != NSNotFound {
    print("index of C: \(index3)")
}

let productNames: NSArray = ["iPhone", "iPad", "Mac Pro", "iPad Pro", "Macbook Pro"]
let prefixPredicate = NSPredicate(format: "SELF BEGINSWITH %@", "i")
let filteredArray = productNames.filtered(using: prefixPredicate)
print(filteredArray)

let mutableProductNames = NSMutableArray(array: productNames)
let suffixPredicate = NSPredicate(format: "SELF ENDSWITH %@", "o")
mutableProductNames.filter(using: suffixPredicate)
print(mutableProductNames)

let alphabet3 = ["A", "B", "C", "D", "E"]
if alphabet3.contains("C") {
    print("contains C")
}
if alphabet3.contains(where: { $0 == "A" }) {
    print("contains A")
}

let productNames2 = ["iPhone", "iPad", "Mac Pro", "iPad Pro", "Macbook Pro"]
let filteredArray2 = productNames2.filter { (element) -> Bool in
    return element.hasPrefix("i")
}
print(filteredArray2)

let alphabet4 = ["A", "B", "C", "D", "E"]
if let index = alphabet4.index(of: "C") {
    print("index of C: \(index)")
}

let alphabet5: NSArray = ["A", "B", "C", "D", "E"]
let upper = ["A", "B", "C", "D", "E"]
let shuffled = ["E", "B", "C", "A", "D"]
let lower = ["a", "a", "c", "d", "e"]
let mixed = ["A", "b", "C", "d", "e"]
if alphabet5.isEqual(to: upper) {
    print("alphabet5 == upper")
} else {
    print("alphabet5 != upper")
}
if alphabet5.isEqual(to: shuffled) {
    print("alphabet5 == shuffled")
} else {
    print("alphabet5 != shuffled")
}
if alphabet5.isEqual(to: lower) {
    print("alphabet5 == lower")
} else {
    print("alphabet5 != lower")
}
if alphabet5.isEqual(to: mixed) {
    print("alphabet5 == mixed")
} else {
    print("alphabet5 != mixed")
}

let alphabet6: NSArray = ["A", "B", "C", "D", "E"]
let lower2 = ["a", "b", "c", "d", "e"]
var equal = true
if alphabet6.count == lower2.count {
    for i in 0..<alphabet6.count {
        let lhs = alphabet6[i] as! NSString
        let rhs = lower[i]
        
        if lhs.caseInsensitiveCompare(rhs) != .orderedSame {
            equal = false
            break
        }
    }
}
if equal {
    print("alphabet6 == lower2")
} else {
    print("alphabet6 != lower2")
}

let alphabet7 = ["A", "B", "C", "D", "E"]
let lower3 = ["a", "b", "c", "d", "e"]
if alphabet7.elementsEqual(lower3, by: { $0.lowercased() == $1.lowercased() }) {
    print("alphabet7 == lower3")
} else {
    print("alphabet7 != lower3")
}

var alphabet8 = [String]()
alphabet8.append("B")
alphabet8.insert("A", at: 0)

var alphabet9 = NSMutableArray(array: ["A", "B", "C"])
alphabet9.replaceObject(at: 0, with: "Z")
print(alphabet9)

alphabet9[0] = "Z"

var alphabet10 = ["A", "B", "C"]
alphabet10[0] = "Z"
print (alphabet10)

var alphabet11 = NSMutableArray(array: ["A", "B", "C"])
let range = NSRange(location: 0, length: 2)
alphabet11.replaceObjects(in: range, withObjectsFrom: ["X", "Y"])
print(alphabet11)

var alphabet12 = ["A", "B", "C"]
alphabet12.replaceSubrange(0..<2, with: ["X", "Y"])
print(alphabet12)

var alphabet13 = ["A", "B", "C"]
alphabet13.replaceSubrange(alphabet13.startIndex..<alphabet13.endIndex.advanced(by: -1), with: ["X", "Y"])
print(alphabet13)

var alphabet14 = ["A", "B", "C"]
alphabet14[alphabet14.startIndex..<alphabet14.endIndex.advanced(by: -1)] = ["X", "Y"]
print(alphabet14)

var alphabet15 = NSMutableArray(array: ["A", "B", "C"])
alphabet15.setArray(["K", "R"])
print(alphabet15)
alphabet15.setArray([])
print(alphabet15)
