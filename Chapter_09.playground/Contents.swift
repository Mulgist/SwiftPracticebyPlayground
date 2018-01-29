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

let str40 = "Swift Programming"
if str40.contains("Swift") {
    // ...
}

let str41: NSString = "Swift Programming"
let result12 = str41.range(of: "Swift")
print("location: \(result12.location)")
print("length: \(result12.length)")

let str42: NSString = "Swift Programming"
let result13 = str42.range(of: "Swift")
if result13.location == NSNotFound {
    // ...
}

let str43 = "Swift Programming"
if let result = str43.range(of: "Swift") {
    print(result)
} else {
    print("Not Found")
}

let str44 = "String Options"
str44.range(of: "S", options: .caseInsensitive)
str44.range(of: "S", options: [.caseInsensitive, .anchored])

let str45 = "Swift"
let result14 = str45.compare("swift", options: [.caseInsensitive])
if result14 == .orderedSame {
    // ...
}

let precomposed = "\u{D55c}\u{AE00}"
let decomposed = "\u{1112}\u{1161}\u{11AB}\u{1100}\u{1173}\u{11AF}"
if decomposed.compare(precomposed) == .orderedSame {
    print("equal")
} else {
    print("not equal")
}

let precomposed2 = "\u{D55c}\u{AE00}"
let decomposed2 = "\u{1112}\u{1161}\u{11AB}\u{1100}\u{1173}\u{11AF}"
if decomposed2.compare(precomposed2, options: [.literal]) == .orderedSame {
    print("equal")
} else {
    print("not equal")
}

let str46 = "Swift Programming"
if let result = str46.range(of: "i") {
    print(str46.distance(from: str46.startIndex, to: result.lowerBound))
}

let str47 = "Swift Programming"
if let result = str47.range(of: "i", options: [.backwards]) {
    print(str47.distance(from: str47.startIndex, to: result.lowerBound))
}

let str48 = "Swift Programming"
if let result = str48.range(of: "i", options: [.anchored]) {
    print(str48.distance(from: str48.startIndex, to: result.lowerBound))
}

let str49 = "Swift Programming"
if let result = str49.range(of: "i", options: [.anchored, .backwards]) {
    print(str49.distance(from: str49.startIndex, to: result.lowerBound))
}

let file9 = "file9.txt"
let file10 = "file10.txt"
var result15 = file9.compare(file10)
print(result15.rawValue)

result15 = file9.compare(file10, options: [.numeric])
print(result15.rawValue)

let withoutDiacritic = "A"
let withDiacritic = "Ä"
var result16 = withoutDiacritic.compare(withDiacritic)
print(result16.rawValue)

result16 = withoutDiacritic.compare(withDiacritic, options: [.diacriticInsensitive])
print(result16.rawValue)

let fullWidth = "\u{30A1}"
let halfWidth = "\u{FF67}"
var result17 = fullWidth.compare(halfWidth)
print(result17.rawValue)

result17 = fullWidth.compare(halfWidth, options: [.widthInsensitive])
print(result17.rawValue)

let upper = "STRING"
let lower = "string"
var result18 = upper.compare(lower, options: [.caseInsensitive])
print(result18.rawValue)

result18 = upper.compare(lower, options: [.caseInsensitive, .forcedOrdering])
print(result18.rawValue)

let emailPattern = "([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+).(\\.[0-9a-zA-Z_-]+){1,2}"
let emailAddress = "user@example.com"
if let result = emailAddress.range(of: emailPattern, options: [.regularExpression]) {
    print("valid email: \(result)")
} else {
    print("invalid email")
}

let nsstr3: NSString = "Lorem ipsum"
print(nsstr3.capitalized)
print(nsstr3.uppercased)
print(nsstr3.lowercased)

let str50 = "Lorem ipsum"
print(str50.capitalized)
print(str50.uppercased())
print(str50.lowercased())

var str51: NSString = "777"
var value = str51.integerValue
print(value)

str51 = "777 grants all file acccess permissionns to all user types"
value = str51.integerValue
print(value)

str51 = "the value 777 grants all file acccess permissionns to all user types"
value = str51.integerValue
print(value)

let str52 = "777"
if let value = Int(str52) {
    print(value)
}

let str53 = "america"
let korean = str53.applyingTransform(StringTransform.latinToHangul, reverse: false)
print(korean!)
let hiragana = str53.applyingTransform(StringTransform.latinToHiragana, reverse: false)
print(hiragana!)
let katakana = str53.applyingTransform(StringTransform.latinToKatakana, reverse: false)
print(katakana!)

let language = "Swift"
let nsstr4 = NSString(format: "Let's learn %@", language)
print(nsstr4)

let str54 = String(format: "Let's learn %@", language)
print(str54)

let intValue2 = 123
var str55 = String(format: "value is %ld", intValue2)
print(str55)

let integerValue: NSInteger = 456
str55 = String(format: "value is %d", integerValue)
print(str55)

let doubleValue2 = 12.34
str55 = String(format: "value is %f", doubleValue2)
print(str55)
str55 = String(format: "value is %e", doubleValue2)
print(str55)

let floatValue: CGFloat = 56.78
str55 = String(format: "value is %.1f", floatValue)
print(str55)

let cString = NSString(string: "C String").utf8String!
str55 = String(format: "[%-20s]", cString)
print(str55)
str55 = String(format: "[%20s]", cString)
print(str55)

let result19 = "result"
let doubleValue3 = 12.34
var str56 = String(format: "The %@ is %.2f.", result19, doubleValue3)
print(str56)
str56 = String(format: "%2$.2f is the %1$@.", result19, doubleValue3)
print(str56)

let result20 = "result"
let doubleValue4 = 12.34
var str57 = "The \(result20) is \(doubleValue4)"
print(str57)
str57 = "\(doubleValue4) is the \(result20)"
print(str57)

let result21 = "result"
let doubleValue5 = 12.34
let valueStr = String(format: "%1.f", doubleValue5)
var str58 = "The \(result21) is \(valueStr)"
print(str58)
str58 = "The \(result21) is \(round(doubleValue5 * 10.0) / 10.0)"
print(str58)

let heart: Character = "\u{2665}"
print(heart)

let precomposedHan = "\u{D55C}"
print(precomposedHan)
let decomposedHan = "\u{1112}\u{1161}\u{11AB}"
print(decomposedHan)
if precomposedHan == decomposedHan {
    print("\(precomposedHan) == \(decomposedHan)")
} else {
    print("\(precomposedHan) != \(decomposedHan)")
}

let precomposedHan2: NSString = "\u{D55C}"
print(precomposedHan2)
let decomposedHan2: NSString = "\u{1112}\u{1161}\u{11AB}"
print(decomposedHan2)
if precomposedHan2 == decomposedHan2 {
    print("\(precomposedHan2) == \(decomposedHan2)")
} else {
    print("\(precomposedHan2) != \(decomposedHan2)")
}

let precomposedCafe = "caf\u{00E9}"
print("\(precomposedCafe) - \(precomposedCafe.characters.count)")
let decomposedCafe = "cafe" + "\u{0301}"
print("\(decomposedCafe) - \(decomposedCafe.characters.count)")
if precomposedCafe == decomposedCafe {
    print("\(precomposedCafe) == \(decomposedCafe)")
} else {
    print("\(precomposedCafe) != \(decomposedCafe)")
}

let precomposedCafe2: NSString = "caf\u{00E9}"
print("\(precomposedCafe2) - \(precomposedCafe2.length)")
let decomposedCafe2: NSString = "cafe\u{0301}"
print("\(decomposedCafe2) - \(decomposedCafe2.length)")
if precomposedCafe2 == decomposedCafe2 {
    print("\(precomposedCafe2) == \(decomposedCafe2)")
} else {
    print("\(precomposedCafe2) != \(decomposedCafe2)")
}

let encodings = String.availableStringEncodings
for encodingConstant in encodings {
    print("\(encodingConstant.rawValue) - \(String.localizedName(of: encodingConstant))")
}

let str59 = "String"
if str.canBeConverted(to: String.Encoding.utf32) {
    if let encodedData = str59.data(using: String.Encoding.utf32) {
        print(encodedData)
    }
}

let charSet = NSCharacterSet.uppercaseLetters
let str60 = "loRem Ipsum"
if let range = str60.rangeOfCharacter(from: charSet) {
    print(str60.distance(from: str60.startIndex, to: range.lowerBound))
}
if let range = str60.rangeOfCharacter(from: charSet, options: [.backwards]) {
    print(str60.distance(from: str60.startIndex, to: range.lowerBound))
}

let charSet2 = NSCharacterSet.whitespaces
let str61 = " A p p l e "
print("[\(str61)]")
let result22 = str61.trimmingCharacters(in: charSet2)
print("[\(result22)]")

let customCharSet = CharacterSet(charactersIn: "#%")
var tmpSet = CharacterSet.alphanumerics
tmpSet.insert(charactersIn: "#%")
tmpSet.remove(charactersIn: "13579")
let customAlphaNumSet = tmpSet

let emailCharSet = CharacterSet(charactersIn: "@.")
let emailAddress2 = "userID@example.com"
let components = emailAddress2.components(separatedBy: emailCharSet)
for str in components {
    print(str)
}
