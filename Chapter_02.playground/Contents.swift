// Chapter 02 자료형

import UIKit

var str = "Hello, playground"

123
+123
-123
1.23
1.23e4 // 1.23 * 10^4
0xAp2 // 0xA * 2^2
100_000_000
123_456.00_01
0b1010
0o12
0xA

MemoryLayout<Int>.size
Int.min
Int.max

Float.leastNormalMagnitude
Float.greatestFiniteMagnitude
Double.leastNormalMagnitude
Double.greatestFiniteMagnitude

if 2.2 - 2.1 == 0.1 {
    print("equal")
} else {
    print("not equal")
}

var b: Bool = true

"Swift Programming"

let a: Character = "c" // 문자도 ""로 묶는다.

let str2: String = "Swift String Literal"
let str3 = "S" // String
let ch: Character = "S" // Character

var lat: Double
var lon: Double

typealias Coordinate = Double
var lat2: Coordinate
var lon2: Coordinate

// var value: AnyObject = "Swift String"
var value: Any = "Swift String"
value = NSNumber(value: 0)

// let sel = #selector(MyClass.doSomething)

// var a2: Int = 12.3   // Error
// print(a)

var a2 = 0
var b2 = 12.3

var a3: Int = 0
var b3: Double = 12.3

// var a4    // Error: 초기화를 안할 시 자료형을 명시하라.
var b4: Float = 12.3

var a5: Int8 = 1
var b5: Int32 = 2
var result = Int32(a5) + b5

