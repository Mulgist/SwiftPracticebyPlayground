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

let str11: NSString = "Swift"
let str12 = str11.appending(" Programing")
print(str12)

let str13: NSString = "Swift"
let str14 = str13.appendingFormat(" %.1f %@", 4.0, "Programing")
print(str14)

let str15 = NSMutableString(string: "Swift")
str15.append(" Programming")
print(str15)

str15.setString("Swift")
str15.appendFormat(" %.1f %@", 4.0, "Programming")
print(str15)

let str16 = "Swift" + " Programming"
print(str16)

var str17 = "Swift"
str17 += " Programming"
print(str17)

let version = 4.0
let str18 = "Swift \(version) Programming"
print(str18)

var str19 = "Swift"
str19.append(" Programming")
str19.append(Character("!"))
print(str19)

let nsstr2: NSString = "Foundation String"
let ch6 = nsstr2.character(at: 0)
print(ch6)
print(Character(UnicodeScalar(ch6)!))

let str20 = "Swift String"
let firstCh = str20[str20.startIndex]
print(firstCh)

let str21 = "Swift String"
let lastCh = str21[str21.index(before: str21.endIndex)]
print(lastCh)

let emptyString3 = ""
if emptyString3.startIndex == emptyString3.endIndex {
    // ...
}

let str22 = "Swift String"
let secondCh = str22[str22.index(after: str22.startIndex)]
print(secondCh)

let str23 = "Swift String"
let thirdCh = str23[str23.index(str23.startIndex, offsetBy: 2)]
print(thirdCh)

// str23[str23.index(bdfore: str23.startIndex)]     // Error
// str23[str23.index(after: str23.endIndex)]        // Error

let str24 = "Swift String"
let range = str24.startIndex..<str24.index(str24.startIndex, offsetBy: 5)
let subStr = str24[range]
print(subStr)

let str25 = "Apple"
for ch in str25 {
    print(ch)
}

let str26 = NSMutableString(string: "Swift Programming")
str26.insert(" 4.0", at: 5)
print(str26)

var str27 = "Swift Programming"
str27.insert("!", at: str27.endIndex)
print(str27)
str27.insert(contentsOf: " 4.0", at: str27.index(str27.startIndex, offsetBy: 5))

let str28 = NSString(string: "Switch Programming")
var result6 = str28.replacingOccurrences(of: "switch", with: "Swift")
print(result6)

if str28.isEqual(to: result6) {
    print("Equal")
} else {
    print("Not Equal")
}

result6 = str28.replacingOccurrences(of: "switch", with: "Swift", options: [.caseInsensitive], range: NSRange(location: 0, length: str28.length))
print(result6)

let replaceRange = NSRange(location: 0, length: 6)
result6 = str28.replacingCharacters(in: replaceRange, with: "Swift")
print(result6)

var str29 = NSMutableString(string: "Switch Programming")
str29.replaceOccurrences(of: "switch", with: "Swift", options: [.caseInsensitive], range: NSMakeRange(0, str29.length))
print(str29)
str29 = NSMutableString(string: "Switch Programming")

let replaceRange2 = NSMakeRange(0, 6)
str29.replaceCharacters(in: replaceRange2, with: "Swift")
print(str29)

let str30 = "Switch Programming"
let result7 = str30.replacingOccurrences(of: "Switch", with: "Swift")
print(result7)

var editableStr = "Switch Proframming"
if let replaceRange = editableStr.range(of: "Switch") {
    editableStr.replaceSubrange(replaceRange, with: "Swift")
}
print(editableStr)

let str31 = NSMutableString(string: "Swift Programming")
let deleteRange = NSRange(location: 5, length: 12)
str31.deleteCharacters(in: deleteRange)
print(str31)
str31.setString("")

var str32 = "Swift Programming"
str32.removeAll(keepingCapacity: true)

var str33 = "Swift 4.0 Programming"
let removeRange = str33.index(str33.startIndex, offsetBy: 6)..<str33.index(str33.startIndex, offsetBy: 10)
str33.removeSubrange(removeRange)
print(str33)

var str34 = "Swift Programming"
let removed = str34.remove(at: str34.startIndex)
print(removed)
print(str34)

let str35: NSString = "123456789"
let substringRange = NSRange(location: 0, length: 3)
let result8 = str35.substring(with: substringRange)
print(result8)

let str36: NSString = "123456789"
let result9 = str36.substring(to: 3)
print(str36)

let str37: NSString = "123456789"
let result10 = str36.substring(from: 3)
print(str37)

let str38 = "123456789"
let result11 = str38[str38.startIndex..<str38.index(str38.startIndex, offsetBy: 3)]
print(result11)

let str39 = "123456789"
let list = str39.components(separatedBy: "5")

for item in list {
    print(item)
}

