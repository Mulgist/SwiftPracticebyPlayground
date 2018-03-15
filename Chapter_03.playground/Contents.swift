// Chapter 03 옵셔널

import UIKit

var optionalNum: Int?
print(optionalNum)

var nonOptionalNum: Int
// printf(nonOptionalNum)   // Error
// nonOptionalNum = nil     // Error

var optionalStr: String? = "hello"
optionalStr = nil
optionalStr = "new value"
optionalStr = nil

var optionalStr2: String? = "hello"
print(optionalStr2)

var optionalStr3: String? = "hello"
print(optionalStr3!)

var optionalStr4: String?
// print(optionalStr4!) // Error

var optionalStr5: String! = "hello"
print(optionalStr5)

var optionalStr6: String? = "hello"
if let str = optionalStr6 {
    print(str)
}

var optionalStr7: String? = "hello"
if var str = optionalStr7 {
    str += " swift!"
    print(str)
}

let name: String? = "John doe"
let point: Int? = 1200
if let n = name {
    if let p = point {
        if p > 1000 {
            print("\(n) - Gold Membership")
        }
    }
}

let name2: String? = "John doe"
let point2: Int? = 1200

if let n = name2, let p = point2, n.characters.count > 3 && p > 1000 {
    print("\(n) - Gold Membership")
}
