// Chapter 08 값 형식과 참조 형식

import UIKit

func doSomething(v: Int) {
    let a = 123
    
    if v > 100 {
        let b = 123
    }
}

let a = 12
let b = 34
if a == b {
    // ...
}

let a2 = NSString(string: "Hello")
let b2 = NSString(string: "Hello")

if a2 == b2 {
    print("\(a2) == \(b2)")
} else {
    print("\(a2) != \(b2)")
}

if a2 === b2 {
    print("\(a2) === \(b2)")
} else {
    print("\(a2) !== \(b2)")
}

let a3 = 123
let numObj = NSNumber(value: a3)
var list = NSArray(object: numObj)

let a4 = 123
let numObj2 = NSNumber(value: a4)
let value = numObj.intValue

let a5 = 123.45
let aObj = NSNumber(value: a5)
let aValue = aObj.intValue
print(a5, ", ", aValue)

let b3 = Int64.max
let bObj = NSNumber(value: b3)
let bValue = bObj.int32Value

print(b3, ", ", bValue)
