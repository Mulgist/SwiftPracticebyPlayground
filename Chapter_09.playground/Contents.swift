// Chapter 09 문자와 문자열

import UIKit

let str = "Swift String"
let ch = "A"

"Swift String"
"""
Swift
"String"
"""

// """Swift"""  // Error
/*
"""Swift    // Error
"""
*/
/*
"""
Swift"""    // Error	
*/

var str2 = """
Multiline
String Literal
"""
print(str2)

str2 = """
        Multiline
        String Literal
"""
print(str2)

var str3 = """
Multiline
    String Literal
"""
print(str3)

/*
var str4 = """
Multiline
    String Literal
    """             // Error
*/

let emptyString = ""
let str4 = "Swift String"
let emptyString2 = String()
let str5 = String(stringLiteral: "Swift String")
let nsstr = NSString(string: "Swift String")

let intValue = 7
let intString = String(intValue)
let doubleValue = 12.34
let doubleString = String(doubleValue)
let bool = true
let boolString = String(bool)
let str6 = "Swift"
let anotherString = String(str6)
let unicode = "\u{2665}"
let unicodeString = String(unicode)
let charList: [Character] = ["S", "w", "i", "f", "t"]
let strFromChar = String(charList)

let ch2: Character = "A"
// let ch2: Character = "AA"     // Error
let ch3 = Character("A")
// let ch = Character("AA")     // Error

let ch4: Character = " "
let ch5 = Character(" ")
// let ch4: Character = ""     // Error
// let ch5 = Character("")     // Error
// let ch5 = Character()     // Error

let str7: NSString = "Foundation String"
print(str7.length)

let str8 = "Swift String"
print(str8.count)

let str9: NSString = "Foundation String"
if str9.length == 0 {
    // ...
}
let str10 = "Swift String"
if str10.isEmpty {
    // ...
}

let a: NSString = "Apple"
let b = "Orange"
if a.isEqual(to: b) {
    print("Equal")
} else {
    print("Not Equal")
}

let a2: NSString = "Apple"
let b2 = "apple"
if a.isEqual(to: b) {
    print("Equal")
} else {
    print("Not Equal")
}

let a3: NSString = "Apple"
let b3 = "apple"
let result = a3.compare(b3)
switch result {
case .orderedAscending:
    print("ASC")
case .orderedSame:
    print("SAME")
case .orderedDescending:
    print("DESC")
}

let a4: NSString = "Apple"
let b4 = "Banana"
let result2 = a4.compare(b4)
switch result2 {
case .orderedAscending:
    print("ASC")
case .orderedSame:
    print("SAME")
case .orderedDescending:
    print("DESC")
}

let a5: NSString = "Apple"
let b5 = "apple"
if a5.caseInsensitiveCompare(b5) == ComparisonResult.orderedSame {
    print("Equal")
} else {
    print("Not Equal")
}

let a6 = "Apple"
let b6 = "apple"
if a6 == b6 {
    print("Equal")
} else {
    print("Not Equal")
}

let a7 = "Apple"
let b7 = "apple"
let result3 = a7.compare(b7)
switch result3 {
case .orderedAscending:
    print("ASC")
case .orderedSame:
    print("SAME")
case .orderedDescending:
    print("DESC")
}
if a7 < b7 {
    print("ASC")
} else {
    print("SAME or DESC")
}

let a8 = "Swift 4.0"
let b8 = "Swift"

var result4 = a8.compare(b8)
print(result4.rawValue)
let compareRange = b8.startIndex..<b8.endIndex
result4 = a8.compare(b8, options: [], range: compareRange)
print(result4.rawValue)

let a9 = "Swift"
if a9.hasPrefix("Swi") {
    // ...
}
if a9.hasSuffix("Programming") {
    // ...
}
let compareRange2 = a9.startIndex..<a9.index(a9.startIndex, offsetBy: 4)
let result5 = a9.compare("swi", options: [.caseInsensitive], range: compareRange2)
print(result5.rawValue)

