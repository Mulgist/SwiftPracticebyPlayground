// Chapter 14 컬렉션

import UIKit

// Array
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

var alphabet16 = ["A", "B", "C"]
alphabet16 = ["K", "R"]
print(alphabet16)
alphabet16 = []
print(alphabet16)

var alphabet17 = NSMutableArray(array:["A", "B", "C", "D", "E"])
alphabet17.removeObject(at: 0)
print(alphabet17)
alphabet17.removeObjects(in: NSMakeRange(0, 3))
print(alphabet17)

var alphabet18 = NSMutableArray(array: ["A", "B", "C", "D", "E"])
alphabet18.removeLastObject()
print(alphabet18)
alphabet18.removeAllObjects()
print(alphabet18)

var alphabet19 = NSMutableArray(array: ["A", "B", "C", "D", "E"])
alphabet19.remove("C")
print(alphabet19)

var alphabet20 = NSMutableArray(array: ["A", "B", "C", "D", "E"])
alphabet20.remove("C", in: NSMakeRange(0, 2))
print(alphabet20)

var alphabet21 = ["A", "B", "C", "D", "E"]
let removed = alphabet21.remove(at: 0)
print(removed)
print(alphabet21)

var alphabet22 = ["A", "B", "C", "D", "E"]
let first3 = alphabet22.removeFirst()
print(first3)
print(alphabet22)
alphabet22.removeFirst(2)
print(alphabet22)
let last3 = alphabet22.removeLast()
print(last3)
print(alphabet22)

var alphabet23 = ["A", "B", "C", "D", "E"]
if let last = alphabet23.popLast() {
    print(last)
}
print(alphabet23)

var alphabet24 = ["A", "B", "C", "D", "E"]
alphabet24.removeAll(keepingCapacity: true)
print(alphabet24)

let alphabet25 = NSMutableArray(array: ["A", "B", "C", "a", "b", "c"])
for i in 0..<(alphabet25.count - 1) {
    let j = Int(arc4random_uniform(UInt32(alphabet25.count - i))) + i
    swap(&alphabet25[i], &alphabet25[j])
}
print(alphabet25)
let sortedArray = alphabet25.sortedArray(using: #selector(NSString.caseInsensitiveCompare(_:)))
print(sortedArray)
alphabet25.sort(using: #selector(NSString.caseInsensitiveCompare(_:)))
print(alphabet25)

let alphabet26 = NSMutableArray(array: ["A", "B", "C", "a", "b", "c"])
let sortedArray2 = alphabet26.sortedArray(comparator: { (obj1, obj2 ) -> ComparisonResult in
    return (obj1 as! String).caseInsensitiveCompare(obj2 as! String)
})
print(sortedArray2)
alphabet26.sort(comparator: { (obj1, obj2 ) -> ComparisonResult in
    return (obj1 as! String).caseInsensitiveCompare(obj2 as! String)
})

var alphabet27 = NSMutableArray(array: ["A", "B", "C", "a", "b", "c"])
for i in 0..<(alphabet27.count - 1) {
    let j = Int(arc4random_uniform(UInt32(alphabet27.count - i))) + i
    swap(&alphabet27[i], &alphabet27[j])
}
print(alphabet27)
let asc = NSSortDescriptor(key: "self", ascending: true)
var sortedArray3 = alphabet27.sortedArray(using: [asc])
print(sortedArray3)
let desc = NSSortDescriptor(key: "self", ascending: false)
sortedArray3 = alphabet27.sortedArray(using: [desc])
print(sortedArray3)

var alphabet28 = ["A", "B", "C", "D", "E"]
for i in 0..<(alphabet28.count - 1) {
    let j = Int(arc4random_uniform(UInt32(alphabet28.count - i))) + i
    guard i != j else { continue }
    alphabet28.swapAt(i, j)
}
print(alphabet28)
let sortedArray4 = alphabet28.sorted()
print(sortedArray4)
alphabet28.sort()
print(alphabet28)

var alphabet29 = ["A", "B", "C", "D", "E"]
for i in 0..<(alphabet29.count - 1) {
    let j = Int(arc4random_uniform(UInt32(alphabet29.count - i))) + i
    guard i != j else { continue }
    alphabet29.swapAt(i, j)
}
print(alphabet29)
let sortedArray5 = alphabet29.sorted { $0 > $1 }
print(sortedArray5)
alphabet29.sort { $0 > $1 }
print(alphabet29)

let alphabet30 = ["A", "B", "C", "D", "E"]
var result = alphabet30.reversed()
print(result)
var result2: [String] = alphabet30.reversed()
print(result2)
result2 = [String](alphabet30.reversed())
print(result2)

let alphabet31: NSArray = ["A", "B", "C", "D", "E"]
let subArray = alphabet31.subarray(with: NSMakeRange(1, 3))
print(subArray)

let alphabet32 = ["A", "B", "C", "D", "E"]
let subArray2 = alphabet32[1..<4]
print(subArray2)

let alphabet33 = ["A", "B", "C", "D", "E"]
var result3 = alphabet33.dropFirst()
print(result3)
result3 = alphabet33.dropFirst(3)
print(result3)

let alphabet34 = ["A", "B", "C", "D", "E"]
var result4 = alphabet34.dropLast()
print(result4)
result4 = alphabet34.dropLast(3)
print(result4)

let alphabet35 = ["A", "B", "C", "D", "E"]
var result5 = alphabet35.prefix(2)
print(result5)
result5 = alphabet35.prefix(upTo: 2)
print(result5)
result5 = alphabet35.prefix(through: 2)
print(result5)

let alphabet36 = ["A", "B", "C", "D", "E"]
var result6 = alphabet36.suffix(2)
print(result6)
result6 = alphabet36.suffix(from: 2)
print(result6)

let alphabet37: NSArray = ["A", "B", "C", "D", "E"]
let str = alphabet37.componentsJoined(by: "#")
print(str)

let alphabet38 = ["A", "B", "C", "D", "E"]
let str2 = alphabet38.joined(separator: "#")
print(str2)

let alphabet39 = ["A", "B", "C", "D", "E"]
let result7 = alphabet39.map { $0.lowercased() }
print(result7)

var list = ["A", "B", "C"]
print("total: \(list.capacity), current: \(list.count)")
list += ["D"]
print("total: \(list.capacity), current: \(list.count)")
list += ["E", "F", "G", "H", "I"]
print("total: \(list.capacity), current: \(list.count)")
list[1..<6] = ["A"]
print("total: \(list.capacity), current: \(list.count)")
var reversedList = [String]()

reversedList.reserveCapacity(100)
print("total: \(reversedList.capacity), current: \(reversedList.count)")

// Dictionary
let words = ["A": "Apple", "B": "Banana", "C": "City"]
let nsWords: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]

var emptyWordDict1: Dictionary<String, String> = [:]
var emptyWordDict2: [String:String] = [:]
var emptyWordDict3 = [String:String]()
let emptyNSDic = NSMutableDictionary()

let words2: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let countOfWords = words2.count
if countOfWords > 0 {
    print("\(countOfWords) element(s)")
} else {
    print("empty dictionary")
}

let words3 = ["A": "Apple", "B": "Banana", "C": "City"]
let countOfWords2 = words3.count
if !words3.isEmpty {
    print("\(countOfWords2) element(s)")
} else {
    print("empty dictionary")
}

let words4: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let aValue = words4.object(forKey: "A")
print(aValue!)
let zValue = words4.object(forKey: "Z")
print(zValue)

let words5: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
if let value = words5.object(forKey: "A") {
    // ...
}

let words6 = ["A": "Apple", "B": "Banana", "C": "City"]
if let aValue = words6["A"] {
    print(aValue)
} else {
    print("Not found")
}
if let zValue = words6["Z"] {
    print(zValue)
} else {
    print("Not found")
}

let words7 = ["A": "Apple", "B": "Banana", "C": "City"]
words7["A"]
words7["Z"]
words7["z", default: "No Words"]

let words8: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let keys = words8.allKeys
print(keys)
let values = words8.allValues
print(values)

let words9 = ["A": "Apple", "B": "Banana", "C": "City"]
let keys2 = Array(words9.keys)
print(keys2)
let values2 = Array(words9.values)
print(values2)

let words10: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let key = "K"
if let _ = words10.object(forKey: key) {
    print("The key \"\(key)\" exists.")
} else {
    print("The key \"\(key)\" not exists.")
}
if words10.allKeys.contains(where: { $0 as! String == key }) {
    print("The key \"\(key)\" exists.")
} else {
    print("The key \"\(key)\" not exists.")
}

let words11: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let keys3 = words11.allKeys(for: "Apple")
print("Key count of Apple: \(keys.count)")

let words12: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let result8 = words12.keysOfEntries(passingTest: { (key, obj, stop) -> Bool in
    if let value = obj as? String {
        return value.range(of: "a", options: .caseInsensitive) != nil
    }
    return false
})
for keyObj in result8 {
    if let key = keyObj as? NSString, let value = words12[key] {
        print("\(key) - \(value)")
    }
}

let words13: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let result9 = words13.keysOfEntries(options: [], passingTest: { (key, obj, stop) -> Bool in
    if let value = obj as? String {
        stop.pointee = true
        return value.range(of: "a", options: .caseInsensitive) != nil
    }
    return false
})
for keyObj in result9 {
    if let key = keyObj as? NSString, let value = words13[key] {
        print("\(key) - \(value)")
    }
}

let words14 = ["A": "Apple", "B": "Banana", "C": "City"]
if words14.contains(where: { (key, value) -> Bool in return key == "A" }) {
    print("contains A key.")
}
if words14.contains(where: { $0.1 == "City" }) {
    print("contains City value.")
}

let words15 = ["A": "Apple", "B": "Banana", "C": "City"]
let result10 = words15.filter { (key, value) -> Bool in
    return value.lowercased().contains("a")
}
for (key, value) in result10 {
    print("\(key) - \(value)")
}

let words16: NSDictionary = ["A": "Apple", "B": "Banana", "C": "City"]
let anotherWords = ["B": "Banana", "C": "City", "A": "Apple"]
let countryCodes = ["KR": "South Korea", "US": "United States"]
if words16.isEqual(to: anotherWords) {
    print("words16 == anotherWords")
} else {
    print("words16 != anotherWords")
}
if words16.isEqual(to: countryCodes) {
    print("words16 == countryCodes")
} else {
    print("words16 != countryCodes")
}

let words17 = ["A": "Apple", "B": "Banana", "C": "City"]
let anotherWords2 = ["B": "Banana", "C": "City", "A": "Apple"]
let countryCodes2 = ["KR": "South Korea", "US": "United States"]
if words17 == anotherWords2 {
    print("words17 == anotherWords2")
} else {
    print("words17 != anotherWords2")
}
if words17 == countryCodes2 {
    print("words17 == countryCodes2")
} else {
    print("words17 != countryCodes2")
}

let words18 = ["A": "Apple", "B": "Banana", "C": "City"]
let upperWords = ["A": "APPLE", "B": "BANANA", "C": "CITY"]
if words18 == upperWords {
    print("words18 == upperWords")
} else {
    print("words18 != upperWords")
}

let words19 = ["A": "Apple", "B": "Banana", "C": "City"]
let upperWords2 = ["A": "APPLE", "B": "BANANA", "C": "CITY"]
let equals = words19.elementsEqual(upperWords2) { (lhs, rhs) -> Bool in
    return lhs.0.lowercased() == rhs.0.lowercased() && lhs.1.lowercased() == rhs.1.lowercased()
}
print(equals)

let words20 = NSMutableDictionary()
words20.setObject("Apple", forKey: "A" as NSCopying)
words20.setObject("Banana", forKey: "B" as NSCopying)
print(words20)
words20.setObject("Blue", forKey: "B" as NSCopying)
print(words20)

let words21 = NSMutableDictionary()
words21["A"] = "Apple"
words21["B"] = "Banana"
print(words21)
words21["B"] = "Blue"
print(words21)

var words22 = [String:String]()
words22["A"] = "Apple"
words22["B"] = "Banana"
print(words22)
words22["B"] = "Blue"
print(words22)

var words23 = [String:String]()
if let oldValue = words23.updateValue("Apple", forKey: "A") {
    print("\(oldValue) => \(words["A"]!)")
} else {
    print("+ \(words["A"]!)")
}
if let oldValue = words23.updateValue("Apricot", forKey: "A") {
    print("\(oldValue) => \(words["A"]!)")
} else {
    print("+ \(words["A"]!)")
}

var words24 = ["A": "Apple", "B": "Banana", "C": "City"]
words24["C"] = nil
print(words24)

let nsWords2 = NSMutableDictionary(dictionary: ["A": "Apple", "B": "Banana", "C": "City"])
nsWords2["C"] = nil
print(nsWords2)

let words25 = NSMutableDictionary(dictionary: ["A": "Apple", "B": "Banana", "C": "City", "D": "Drama", "E": "Earth", "F": "Fuel"])
words25.removeObject(forKey: "D")
print(words25)
words25.removeObjects(forKeys: ["A", "F"])
print(words25)
words25.removeAllObjects()
print(words25)

var words26 = ["A": "Apple", "B": "Banana", "C": "City", "D": "Drama", "E": "Earth", "F": "Fuel"]
if let removeValue = words26.removeValue(forKey: "D") {
    print("\(removeValue) removed!")
}
print(words26)
words26.removeAll()
print(words26)

words26.removeAll(keepingCapacity: true)

// Set
let fruitsArray = ["Apple", "Orange", "Melon"]
let fruitsFromArray = NSSet(array: fruitsArray)
let fruitsFromSet = NSSet(set: fruitsFromArray)
let fruits7 = NSSet(objects: "Apple", "Orange", "Melon")
let emptySet = NSSet()

let fruits8: Set<String> = ["Apple", "Orange", "Melon"]
let numbers: Set = [1, 2, 3]
let emptySet2 = Set<String>()

let fruits9: Set<String> = ["Apple", "Orange", "Melon"]
var countOfFruits2 = fruits9.count
if !fruits9.isEmpty {
    print("\(countOfFruits2) element(s)")
} else {
    print("empty set")
}

let nsFruits = NSSet(set: fruits9)
countOfFruits2 = nsFruits.count
if let _ = nsFruits.anyObject() {
    print("\(countOfFruits2) element(s)")
} else {
    print("empty set")
}

let fruits10: NSSet = ["Apple", "Orange", "Melon"]
if fruits10.contains("Apple") {
    // ...
}
let fruits11 = ["Apple", "Orange", "Melon"]
if fruits11.contains("Apple") {
    // ...
}

let productSet = NSSet(objects: "iPhone", "iPad", "Mac Pro", "iPad Pro", "Macbook Pro")
let prefixPredicate2 = NSPredicate(format: "SELF BEGINSWITH %@", "i")
let filteredSet = productSet.filtered(using: prefixPredicate2)
print(filteredSet)

let mutableProductSet = NSMutableSet(set: productSet)
let suffixPredicate2 = NSPredicate(format: "SELF ENDSWITH %@", "o")
mutableProductSet.filtered(using: suffixPredicate2)
print(mutableProductSet)

let productSet2: Set = ["iPhone", "iPad", "Mac Pro", "iPad Pro", "Macbook Pro"]
let filteredSet2 = productSet2.filter { $0.hasPrefix("i") }
print(filteredSet2)

let set = NSMutableSet()
set.add("Apple")
set.add("Apple")
print(set)
var alphabet40 = ["A", "B"]
set.addObjects(from: alphabet40)
print(set)
alphabet40 = ["A", "B", "C"]
set.addObjects(from: alphabet40)
print(set)

var set2: Set<String> = []
set2.insert("Apple")
print(set2)
var result11 = set2.insert("Orange")
print(result11)
print(set2)
result11 = set2.insert("Orange")
print(result11)
print(set2)

let set3 = NSMutableSet(array: ["Apple", "Orange", "Melon"])
set3.remove("Apple")
print(set3)
set3.removeAllObjects()
print(set3)

var set4: Set = ["Apple", "Orange", "Melon"]
if let removed = set4.remove("Apple") {
    print("\(removed) has been removed!")
}
print(set4)
set4.removeAll(keepingCapacity: true)
print(set4)

let favoriteFruits = NSSet(objects: "Apple", "Orange", "Melon")
let tropicalFruits = NSSet(objects: "Banana", "Papaya", "Kiwi", "Pineapple")
if favoriteFruits.isEqual(to: tropicalFruits as Set<NSObject>) {
    print("favoriteFruits == tropicalFruits")
} else {
    print("favoriteFruits != tropicalFruits")
}

let favoriteFruits2 = Set(["Apple", "Orange", "Melon"])
let tropicalFruits2 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
if favoriteFruits2 == tropicalFruits2 {
    print("favoriteFruits2 == tropicalFruits2")
} else {
    print("favoriteFruits2 != tropicalFruits2")
}
if favoriteFruits2.elementsEqual(tropicalFruits2) {
    print("favoriteFruits2 == tropicalFruits2")
} else {
    print("favoriteFruits2 != tropicalFruits2")
}

let tropicalFruits3 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
// let yellowFruits = NSSet(array: ["Banana"])
let yellowFruits = NSSet(array: ["Banana", "Papaya", "Kiwi", "Pineapple"])
if yellowFruits.isSubset(of: tropicalFruits3) {
    print("yellowFruits ⊆ tropicalFruits3")
} else {
    print("yellowFruits ⊈ tropicalFruits3")
}

let tropicalFruits4 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
let yelloFruits2 = Set(["Banana"])
if yelloFruits2.isSubset(of: tropicalFruits4) {
    print("yellowFruits2 ⊆ tropicalFruits4")
} else {
    print("yellowFruits2 ⊈ tropicalFruits4")
}
if yelloFruits2.isStrictSubset(of: tropicalFruits4) {
    print("yellowFruits2 ⊂ tropicalFruits4")
} else {
    print("yellowFruits2 ⊄ tropicalFruits4")
}
if tropicalFruits4.isSuperset(of: yelloFruits2) {
    print("tropicalFruits4 ⊇ yelloFruits2")
} else {
    print("tropicalFruits4 ⊉ yelloFruits2")
}
if tropicalFruits4.isStrictSuperset(of: yelloFruits2) {
    print("tropicalFruits4 ⊃ yelloFruits2")
} else {
    print("tropicalFruits4 ⊅ yelloFruits2")
}

let favoriteFruits3 = NSSet(array: ["Apple", "Orange", "Melon", "Kiwi"])
let tropicalFruits5 = NSMutableSet(array: ["Banana", "Papaya", "Kiwi", "Pineapple"])
if favoriteFruits3.intersects(tropicalFruits5 as Set<NSObject>) {
    print("favoriteFruits3 ∩ tropicalFruits5")
    tropicalFruits5.intersect(favoriteFruits3 as Set<NSObject>)
    print(tropicalFruits5)
} else {
    print("favoriteFruits3 ∩ tropicalFruits5 = ∅")
}

let favoriteFruits4 = Set(["Apple", "Orange", "Melon", "Kiwi"])
var tropicalFruits6 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
if favoriteFruits4.isDisjoint(with: tropicalFruits6) {
    print("favoriteFruits4 ∩ tropicalFruits6 = ∅")
} else {
    print("favoriteFruits4 ∩ tropicalFruits6")
}
let commonSet = favoriteFruits4.intersection(tropicalFruits6)
print(commonSet)
tropicalFruits6.formIntersection(favoriteFruits4)
print(tropicalFruits6)

let favoriteFruits5 = Set(["Apple", "Orange", "Melon", "Kiwi"])
var tropicalFruits7 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
let unionSet = NSMutableSet(set: favoriteFruits5)
unionSet.union(tropicalFruits7)
print(unionSet)

let favoriteFruits6 = Set(["Apple", "Orange", "Melon", "Kiwi"])
var tropicalFruits8 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
var unionSet2 = favoriteFruits6.union(tropicalFruits8)
print(unionSet2)
unionSet2 = Set(favoriteFruits6)
unionSet2.formUnion(tropicalFruits8)
print(unionSet2)

let favoriteFruits7 = NSMutableSet(array: ["Apple", "Orange", "Melon", "Kiwi"])
let tropicalFruits9 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
favoriteFruits7.minus(tropicalFruits9)
print(favoriteFruits7)

var favoriteFruits8 = Set(["Apple", "Orange", "Melon", "Kiwi"])
let tropicalFruits10 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
let uncommonSet = favoriteFruits8.subtracting(tropicalFruits10)
print(uncommonSet)
favoriteFruits8.subtract(tropicalFruits10)
print(favoriteFruits8)

var favoriteFruits9 = Set(["Apple", "Orange", "Melon", "Kiwi"])
let tropicalFruits11 = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
let exclusiveSet = favoriteFruits9.symmetricDifference(tropicalFruits11)
print(exclusiveSet)
favoriteFruits9.formSymmetricDifference(tropicalFruits11)

let set5 = NSCountedSet()
set5.add("Apple")
set5.add("Apple")
set5.add("Apple")
print(set5)
var countOfApple = set5.count(for: "Apple")
print(countOfApple)
set5.remove("Apple")
print(set5)
countOfApple = set5.count(for: "Apple")
print(countOfApple)
set5.remove("Apple")
set5.remove("Apple")
print(set5)
countOfApple = set5.count(for: "Apple")
print(countOfApple)

let array = ["Apple", "Orange", "Melon"]
for value in array {
    if let index = array.index(of: value) {
        print("\(index) - \(value)")
    }
}
let set6 = Set(array)
for value in set6 {
    print(value)
}

let array2 = ["Apple", "Orange", "Melon"]
for value in array2.reversed() {
    if let index = array2.index(of: value) {
        print("\(index) - \(value)")
    }
}

let alphabet41 = ["A", "B", "C"]
for t in alphabet41.enumerated() {
    print("#\(t.0) - \(t.1)")
}
for (index, char) in alphabet41.enumerated() {
    print("#\(index) - \(char)")
}

let dict = ["A": "Apple", "B": "Banana", "C": "City"]
for (key, value) in dict {
    print("\(key): \(value)")
}

let words27 = ["A": "Apple", "B": "Banana", "C": "City"]
for key in words27.keys {
    print(key)
}
for val in words27.values {
    print(val)
}

let words28 = ["A": "Apple", "B": "Banana", "C": "City"]
let keyArray = Array(words28.keys)
let valueArray = Array(words28.values)

var array3 = ["Apple", "Orange", "Melon", "Apple", "Orange", "Melon"]
for value in array3 {
    if value == "Melon" {
        if let index = array3.index(of: value) {
            // array.remove(at: index)  // Error
        }
    }
}

var array4 = ["Apple", "Orange", "Melon", "Apple", "Orange", "Melon"]
var deleteSet = Set<String>()
for value in array4 {
    if value == "Melon" {
        deleteSet.insert(value)
    }
}
for value in deleteSet {
    var index = array4.index(of: value)
    while index != nil {
        array4.remove(at: index!)
        index = array4.index(of: value)
    }
}
print(array4)
