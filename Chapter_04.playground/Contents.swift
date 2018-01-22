// Chapter 04 연산자

import UIKit

let a = 1
let b = 2
let result = a + b

let a2 = 1
let result2 = -a2

let a3 = 1
let b3 = 2
let result3 = a3 - b3

let a4 = 1
let b4 = 2
let result4 = a4 * b4

let a5 = 1
let b5 = 2
let result5 = a5 / b5

let a6 = 1
let b6 = 2
let result6 = Double(a6) / Double(b6)

let a7 = 34
let b7 = 12
let result7 = a7 % b7

let c = 3.4
let d = 1.2
// let result8 = c % d // Error
let result8 = c.truncatingRemainder(dividingBy: d)

// let a8: Int16 = Int16.max + 1    // Error

let a9: Int16 = Int16.max &+ 1
print(a9)
let b8: Int16 = Int16.min &- 1
print(b8)
let c2: Int16 = Int16.min &+ Int16.max
print(c2)

let a10 = 1
let b10 = 2
let result10 = a == b
print("\(a10) == \(b10): \(result10)")

let a11 = 1
let b11 = 2
let result11 = a != b
print("\(a11) != \(b11): \(result11)")

let a12 = 1
let b12 = 2
let result12 = a < b
print("\(a12) < \(b12): \(result12)")

let a13 = 1
let b13 = 2
let result13 = a <= b
print("\(a13) <= \(b13): \(result13)")

let a14 = 1
let b14 = 2
let result14 = a > b
print("\(a14) > \(b14): \(result14)")

let a15 = 1
let b15 = 2
let result15 = a >= b
print("\(a15) >= \(b15): \(result15)")

let str1 = NSString(format: "%0", "str")
let str2 = NSString(string: str1)
if str1 == str2 {
    print("equal")
} else {
    print("not equal")
}
if str1 === str2 {
    print("identical")
} else {
    print("not identical")
}

let a16 = 1
let b16 = 2
if a16 % 2 == 0 && b16 % 2 == 0 {
    print(true)
} else {
    print(false)
}

let a17 = 1
let b17 = 2
if a17 % 2 == 0 || b17 % 2 == 0 {
    print(true)
} else {
    print(false)
}

let a18 = 1
if !(a18 % 2 == 0) {
    print(true)
} else {
    print(false)
}

var a19 = 1
var b19 = 2
func updateLeft() -> Bool {
    a19 += 1
    return true
}
func updateRight() -> Bool {
    b19 += 1
    return true
}
if (updateLeft() && updateRight()) {
    // ...
}
print(a19)
print(b19)

var a20 = 1
var b20 = 2
func updateLeft2() -> Bool {
    a20 += 1
    return false
}
func updateRight2() -> Bool {
    b20 += 1
    return true
}
if (updateLeft2() && updateRight2()) {
    // ...
}
print(a20)
print(b20)

let resultA = updateLeft2()
let resultB = updateRight2()
if resultA && resultB {
    // ...
}
print(a20)
print(b20)

let a21 = 0b00100011
let b21 = 0b00011010
print(a21 & b21)

let a22 = 0b00100011
let b22 = 0b00011010
print(a22 | b22)

let a23 = 0b00100011
let b23 = 0b00011010
print(a23 ^ b23)

let a24 = 0b00100011
print(~a24)
print(~(~a24))

let a25 = 10
print(a << 1)

let a26 = 10
print(a >> 1)

let a27 = 0
let b27 = a
let c27 = 1 + 2
let d27 = abs(-2)

var a28 = 1
/*
 if a = 2 {     // Error
    // ...
 }
*/

let a29 = 0

var a30 = 1
a30 += 2
print(a30)
var b30 = 1
b30 = b30 + 2
print(b30)

var a31 = 1
a31 -= 2
print(a31)
var b31 = 1
b31 = b31 - 2
print(b31)

var a32 = 1
a32 *= 2
print(a32)
var b32 = 1
b32 = b32 * 2
print(b32)

var a33 = 1.0
a33 /= 2
print(a33)
var b33 = 1.0
b33 = b33 / 2
print(b33)

var a34 = 1
a34 %= 2
print(a34)
var b34 = 1
b34 = b34 % 2
print(b34)

var a35 = 1
a35 |= 2
print(a35)
var b35 = 1
b35 = b35 | 2
print(b35)

var a36 = 1
a36 ^= 2
print(a36)
var b36 = 1
b31 = b36 ^ 2
print(b36)

var a37 = 1
a31 <<= 2
print(a37)
var b37 = 1
b37 = b37 << 2
print(b37)

var a38 = 1
a38 >>= 2
print(a3)
var b39 = 1
b39 = b39 >> 2
print(b39)

let a40 = 10
let b40 = 5
let max = a40 > b40 ? a40 : b40
print(max)

let a41 = 10
let b41 = 5
var max2 = 0
if a40 > b40 {
    max2 = a40
} else {
    max2 = b40
}
print(max2)

let name: String? = nil
if let n = name {
    print(n)
} else {
    print("John Doe")
}

let name2: String? = nil
print(name2 != nil ? name2! : "John Doe")

let name3: String? = nil
print(name3 ?? "John Doe")

let name4: String? = nil
print(name ?? 0)

let name5: String? = nil
// let validNmae = name ?? 0    // Error
print(name5 ?? 0)

let name6: String? = nil
let validName = name ?? "John Doe"

let num: Int? = nil
let validNum = num ?? 0

let range = 0...3
for index in range {
    print(index)
}

let rangeOfDouble = 0.0...10.0
let rangeOfReturnValue = min(0, -2)...Swift.max(7, 10)

let range2 = 0..<3
for index in range2 {
    print(index)
}

let range3 = 0..<3
for index in range3.reversed() {
    print(index)
}

let list = ["A", "B", "C", "D", "E"]
list[2...]
list[...2]
list[..<2]

/*
for _ in 0... {
    // 무한 루프
}
 */

var result16 = 1 + 2
result16 = result16 * 3
print(result16)

var result17 = (1 + 2) * 3
print(result17)
